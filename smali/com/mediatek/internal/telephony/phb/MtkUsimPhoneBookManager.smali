.class public Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;
.super Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.source "MtkUsimPhoneBookManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;,
        Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final EVENT_AAS_LOAD_DONE:I = 0x5

.field private static final EVENT_AAS_LOAD_DONE_OPTMZ:I = 0x1c

.field private static final EVENT_AAS_UPDATE_DONE:I = 0xa

.field private static final EVENT_ANR_RECORD_LOAD_DONE:I = 0x10

.field private static final EVENT_ANR_RECORD_LOAD_OPTMZ_DONE:I = 0x17

.field private static final EVENT_ANR_UPDATE_DONE:I = 0x9

.field private static final EVENT_EMAIL_RECORD_LOAD_DONE:I = 0xf

.field private static final EVENT_EMAIL_RECORD_LOAD_OPTMZ_DONE:I = 0x16

.field private static final EVENT_EMAIL_UPDATE_DONE:I = 0x8

.field private static final EVENT_EXT1_LOAD_DONE:I = 0x3e9

.field private static final EVENT_GAS_LOAD_DONE:I = 0x6

.field private static final EVENT_GAS_UPDATE_DONE:I = 0xd

.field private static final EVENT_GET_RECORDS_SIZE_DONE:I = 0x3e8

.field private static final EVENT_GRP_RECORD_LOAD_DONE:I = 0x11

.field private static final EVENT_GRP_UPDATE_DONE:I = 0xc

.field private static final EVENT_IAP_RECORD_LOAD_DONE:I = 0xe

.field private static final EVENT_IAP_UPDATE_DONE:I = 0x7

.field private static final EVENT_QUERY_ANR_AVAILABLE_OPTMZ_DONE:I = 0x1a

.field private static final EVENT_QUERY_EMAIL_AVAILABLE_OPTMZ_DONE:I = 0x19

.field private static final EVENT_QUERY_PHB_ADN_INFO:I = 0x15

.field private static final EVENT_QUERY_SNE_AVAILABLE_OPTMZ_DONE:I = 0x1b

.field private static final EVENT_SELECT_EF_FILE_DONE:I = 0x14

.field private static final EVENT_SNE_RECORD_LOAD_DONE:I = 0x12

.field private static final EVENT_SNE_RECORD_LOAD_OPTMZ_DONE:I = 0x18

.field private static final EVENT_SNE_UPDATE_DONE:I = 0xb

.field private static final EVENT_UPB_CAPABILITY_QUERY_DONE:I = 0x13

.field private static final LOG_TAG:Ljava/lang/String; = "MtkUsimPhoneBookManager"

.field private static final PBR_NOT_NEED_NOTIFY:I = -0x1

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field private static final UPB_EF_AAS:I = 0x3

.field private static final UPB_EF_ANR:I = 0x0

.field private static final UPB_EF_EMAIL:I = 0x1

.field private static final UPB_EF_GAS:I = 0x4

.field private static final UPB_EF_GRP:I = 0x5

.field private static final UPB_EF_SNE:I = 0x2

.field private static final USIM_DEFAULT_MAX_ADN_FILE_SIZE:I = 0xfa

.field private static final USIM_DEFAULT_MAX_EMAIL_FILE_SIZE:I = 0x64

.field public static final USIM_ERROR_CAPACITY_FULL:I = -0x1e

.field public static final USIM_ERROR_GROUP_COUNT:I = -0x14

.field public static final USIM_ERROR_NAME_LEN:I = -0xa

.field public static final USIM_ERROR_OTHERS:I = -0x32

.field public static final USIM_ERROR_STRING_TOOLONG:I = -0x28

.field private static final USIM_MAX_AAS_ENTRIES_COUNT:I = 0x5

.field public static final USIM_MAX_ANR_COUNT:I = 0x3

.field private static final USIM_TYPE2_CONDITIONAL_LENGTH:I = 0x2


# instance fields
.field private mAasForAnr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAasLock:Ljava/lang/Object;

.field private mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

.field private mAdnFileSize:I

.field private mAdnRecordSize:[I

.field private mAnrInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[I>;"
        }
    .end annotation
.end field

.field private mAnrRecordSize:I

.field private mCi:Lcom/mediatek/internal/telephony/MtkRIL;

.field private mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field protected mEfData:Lcom/mediatek/internal/telephony/uicc/EFResponseData;

.field private mEmailFileSize:I

.field private mEmailInfo:[I

.field private mEmailRecTable:[I

.field private mEmailRecordSize:I

.field private mExt1FileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "[B>;>;"
        }
    .end annotation
.end field

.field private mGasForGrp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/internal/telephony/phb/UsimGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mGasLock:Ljava/lang/Object;

.field private mIapFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "[B>;>;"
        }
    .end annotation
.end field

.field private mIsReset:Z

.field private mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mPbrNeedNotify:I

.field private mPbrRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneBookRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mReadEFLinerRecordSizeNum:I

.field private mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mRecordSize:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRefreshAdnInfo:Z

.field private mRefreshAnrInfo:Z

.field private mRefreshEmailInfo:Z

.field private mResult:I

.field private mSliceCount:I

.field private mSlotId:I

.field private mSneInfo:[I

.field private final mUPBCapabilityLock:Ljava/lang/Object;

.field private mUpbCap:[I

.field private mUpbDone:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 87
    nop

    .line 88
    const-string v0, "persist.vendor.log.tel_dbg"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1b

    .line 89
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
    sput-boolean v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->DBG:Z

    .line 87
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/AdnRecordCache;)V
    .registers 7
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p2, "cache"    # Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 226
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/AdnRecordCache;)V

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSlotId:I

    .line 95
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    .line 96
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    .line 97
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasLock:Ljava/lang/Object;

    .line 100
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecordSize:I

    .line 101
    const/16 v1, 0x64

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailFileSize:I

    .line 102
    const/16 v1, 0xfa

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnFileSize:I

    .line 103
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrRecordSize:I

    .line 106
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSliceCount:I

    .line 107
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbDone:I

    .line 108
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIsReset:Z

    .line 110
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrNeedNotify:I

    .line 111
    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadEFLinerRecordSizeNum:I

    .line 115
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    .line 118
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRefreshEmailInfo:Z

    .line 119
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRefreshAnrInfo:Z

    .line 120
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRefreshAdnInfo:Z

    .line 121
    const/16 v3, 0x190

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecTable:[I

    .line 125
    const/16 v3, 0x8

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    .line 126
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    .line 178
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 179
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 180
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 181
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 182
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 183
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 185
    iput-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEfData:Lcom/mediatek/internal/telephony/uicc/EFResponseData;

    .line 227
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/AdnRecordCache;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V
    .registers 10
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p2, "cache"    # Lcom/android/internal/telephony/uicc/AdnRecordCache;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p4, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 231
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/AdnRecordCache;)V

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSlotId:I

    .line 95
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    .line 96
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    .line 97
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasLock:Ljava/lang/Object;

    .line 100
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecordSize:I

    .line 101
    const/16 v1, 0x64

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailFileSize:I

    .line 102
    const/16 v1, 0xfa

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnFileSize:I

    .line 103
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrRecordSize:I

    .line 106
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSliceCount:I

    .line 107
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbDone:I

    .line 108
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIsReset:Z

    .line 110
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrNeedNotify:I

    .line 111
    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadEFLinerRecordSizeNum:I

    .line 115
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    .line 118
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRefreshEmailInfo:Z

    .line 119
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRefreshAnrInfo:Z

    .line 120
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRefreshAdnInfo:Z

    .line 121
    const/16 v3, 0x190

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecTable:[I

    .line 125
    const/16 v3, 0x8

    new-array v4, v3, [I

    iput-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    .line 126
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    .line 178
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 179
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 180
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 181
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 182
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 183
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 185
    iput-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEfData:Lcom/mediatek/internal/telephony/uicc/EFResponseData;

    .line 232
    iput-object p1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 233
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 234
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    .line 235
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    .line 236
    iput-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    .line 239
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 240
    move-object v1, p2

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 241
    move-object v1, p3

    check-cast v1, Lcom/mediatek/internal/telephony/MtkRIL;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    .line 242
    iput-object p4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 243
    if-nez p4, :cond_a5

    move v1, v0

    goto :goto_a9

    :cond_a5
    invoke-virtual {p4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v1

    :goto_a9
    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSlotId:I

    .line 244
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailsForAdnRec:Landroid/util/SparseArray;

    .line 245
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSfiEfidTable:Landroid/util/SparseIntArray;

    .line 246
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_ba
    if-ge v1, v3, :cond_c3

    .line 247
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    aput v0, v2, v1

    .line 246
    add-int/lit8 v1, v1, 0x1

    goto :goto_ba

    .line 249
    .end local v1    # "i":I
    :cond_c3
    const-string v0, "constructor finished. "

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 84
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    .line 84
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSliceCount:I

    return v0
.end method

.method static synthetic access$408(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;)I
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    .line 84
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSliceCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSliceCount:I

    return v0
.end method

.method private buildAnrRecord(Ljava/lang/String;II)[B
    .registers 10
    .param p1, "anr"    # Ljava/lang/String;
    .param p2, "recordSize"    # I
    .param p3, "aas"    # I

    .line 3372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buildAnrRecord anr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",recordSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",aas:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3374
    if-gtz p2, :cond_29

    .line 3375
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readAnrRecordSize()V

    .line 3381
    :cond_29
    new-array v0, p2, [B

    .line 3383
    .local v0, "anrString":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2c
    if-ge v1, p2, :cond_34

    .line 3384
    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 3383
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 3387
    .end local v1    # "i":I
    :cond_34
    invoke-static {p1}, Lcom/mediatek/internal/telephony/MtkPhoneNumberUtils;->convertPreDial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3389
    .local v1, "updatedAnr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "MtkUsimPhoneBookManager"

    if-eqz v2, :cond_46

    .line 3390
    const-string v2, "[buildAnrRecord] Empty dialing number"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3391
    return-object v0

    .line 3392
    :cond_46
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x14

    if-le v2, v4, :cond_55

    .line 3393
    const-string v2, "[buildAnrRecord] Max length of dialing number is 20"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3395
    const/4 v2, 0x0

    return-object v2

    .line 3397
    :cond_55
    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkPhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v2

    .line 3398
    .local v2, "bcdNumber":[B
    if-eqz v2, :cond_69

    .line 3399
    int-to-byte v3, p3

    const/4 v4, 0x0

    aput-byte v3, v0, v4

    .line 3400
    const/4 v3, 0x2

    array-length v5, v2

    invoke-static {v2, v4, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3402
    array-length v3, v2

    int-to-byte v3, v3

    const/4 v4, 0x1

    aput-byte v3, v0, v4

    .line 3405
    :cond_69
    return-object v0
.end method

.method private buildAnrRecordOptmz(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 7
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "aas"    # I

    .line 1077
    const/16 v0, 0x81

    .line 1080
    .local v0, "ton":I
    const/16 v1, 0x2b

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_35

    .line 1081
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-eq v2, v1, :cond_2b

    .line 1083
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There are multiple \'+\' in the number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkUsimPhoneBookManager"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    :cond_2b
    const/16 v0, 0x91

    .line 1086
    const-string v1, "+"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1089
    :cond_35
    const/16 v1, 0x4e

    const/16 v2, 0x3f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 1091
    const/16 v1, 0x2c

    const/16 v2, 0x70

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 1093
    const/16 v1, 0x3b

    const/16 v2, 0x77

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 1100
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 1101
    .local v1, "res":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 1102
    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1103
    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1105
    return-object v1
.end method

.method private buildEmailRecord(Ljava/lang/String;IIZ)[B
    .registers 14
    .param p1, "strEmail"    # Ljava/lang/String;
    .param p2, "adnIndex"    # I
    .param p3, "recordSize"    # I
    .param p4, "emailType2"    # Z

    .line 3412
    new-array v0, p3, [B

    .line 3414
    .local v0, "eMailRecData":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    const/4 v2, -0x1

    if-ge v1, p3, :cond_b

    .line 3415
    aput-byte v2, v0, v1

    .line 3414
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3418
    .end local v1    # "i":I
    :cond_b
    if-eqz p1, :cond_9b

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9b

    .line 3419
    invoke-static {p1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v1

    .line 3420
    .local v1, "eMailData":[B
    iget v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecordSize:I

    if-eq v3, v2, :cond_23

    if-eqz p4, :cond_23

    .line 3421
    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    goto :goto_24

    .line 3422
    :cond_23
    array-length v2, v0

    :goto_24
    nop

    .line 3423
    .local v2, "maxDataLength":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildEmailRecord eMailData.length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", maxDataLength="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3426
    array-length v3, v1

    if-le v3, v2, :cond_47

    .line 3427
    const/4 v3, 0x0

    return-object v3

    .line 3430
    :cond_47
    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3432
    if-eqz p4, :cond_9b

    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v3, :cond_9b

    .line 3433
    add-int/lit8 v4, p2, -0x1

    iget v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnFileSize:I

    div-int/2addr v4, v5

    .line 3434
    .local v4, "pbrIndex":I
    rem-int v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    .line 3435
    .local v5, "adnRecId":I
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    # getter for: Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v3

    .line 3436
    .local v3, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    const/16 v6, 0xc0

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 3437
    .local v6, "adnFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    add-int/lit8 v7, p3, -0x2

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getSfi()I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    .line 3438
    add-int/lit8 v7, p3, -0x1

    int-to-byte v8, v5

    aput-byte v8, v0, v7

    .line 3439
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "buildEmailRecord x+1="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getSfi()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", x+2="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3442
    .end local v1    # "eMailData":[B
    .end local v2    # "maxDataLength":I
    .end local v3    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v4    # "pbrIndex":I
    .end local v5    # "adnRecId":I
    .end local v6    # "adnFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :cond_9b
    return-object v0
.end method

.method private changeAdnRecordNumber(ILjava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 7
    .param p1, "baseNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;",
            ">;"
        }
    .end annotation

    .line 5310
    .local p2, "adnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5311
    .local v0, "size":I
    const/4 v1, 0x0

    .line 5314
    .local v1, "i":I
    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_1b

    .line 5315
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    .line 5316
    .local v2, "adnRecord":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    if-eqz v2, :cond_18

    .line 5317
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getRecId()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setRecordIndex(I)V

    .line 5314
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 5320
    .end local v2    # "adnRecord":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :cond_1b
    return-object p2
.end method

.method private checkIsPhbReady()Z
    .registers 11

    .line 5168
    const-string v0, "false"

    .line 5169
    .local v0, "strPhbReady":Ljava/lang/String;
    const-string v1, ""

    .line 5170
    .local v1, "strAllSimState":Ljava/lang/String;
    const-string v2, ""

    .line 5171
    .local v2, "strCurSimState":Ljava/lang/String;
    const/4 v3, 0x0

    .line 5173
    .local v3, "isSimLocked":Z
    iget v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSlotId:I

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_27

    .line 5174
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[isPhbReady] InvalidSlotId slotId: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSlotId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 5175
    return v5

    .line 5178
    :cond_27
    iget v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSlotId:I

    const-string v6, "vendor.gsm.sim.ril.phbready"

    const-string v7, "false"

    invoke-static {v4, v6, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5181
    const-string v4, "ro.vendor.mtk_ril_mode"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "c6m_1rild"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "true"

    const-string v7, "[isPhbReady] isPhbReady: "

    if-eqz v4, :cond_5a

    .line 5182
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 5183
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    return v4

    .line 5186
    :cond_5a
    const-string v4, "gsm.sim.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5187
    if-eqz v1, :cond_7b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_7b

    .line 5188
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 5189
    .local v4, "values":[Ljava/lang/String;
    iget v8, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSlotId:I

    if-ltz v8, :cond_7b

    array-length v9, v4

    if-ge v8, v9, :cond_7b

    aget-object v9, v4, v8

    if-eqz v9, :cond_7b

    .line 5190
    aget-object v2, v4, v8

    .line 5194
    .end local v4    # "values":[Ljava/lang/String;
    :cond_7b
    const-string v4, "NETWORK_LOCKED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v8, 0x1

    if-nez v4, :cond_8f

    .line 5195
    const-string v4, "PIN_REQUIRED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8d

    goto :goto_8f

    :cond_8d
    move v4, v5

    goto :goto_90

    :cond_8f
    :goto_8f
    move v4, v8

    :goto_90
    move v3, v4

    .line 5197
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",strSimState: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 5198
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b4

    if-nez v3, :cond_b4

    move v5, v8

    :cond_b4
    return v5
.end method

.method private countEmailCapacity(I)I
    .registers 15
    .param p1, "adnIndex"    # I

    .line 3037
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v1, -0x1

    if-eqz v0, :cond_9e

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_9e

    .line 3041
    :cond_d
    add-int/lit8 v0, p1, -0x1

    iget v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnFileSize:I

    div-int/2addr v0, v2

    .line 3042
    .local v0, "pbrRecNum":I
    mul-int/2addr v2, v0

    .line 3043
    .local v2, "nOffset":I
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3044
    .local v3, "numAdnRecs":I
    iget v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnFileSize:I

    add-int/2addr v4, v2

    .line 3045
    .local v4, "nMax":I
    if-ge v3, v4, :cond_20

    move v5, v3

    goto :goto_21

    :cond_20
    move v5, v4

    :goto_21
    move v4, v5

    .line 3046
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    # getter for: Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v5

    .line 3047
    .local v5, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    const/16 v6, 0xca

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 3048
    .local v6, "emailFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    const/4 v7, 0x0

    .line 3050
    .local v7, "used":I
    if-eqz v6, :cond_9d

    .line 3051
    const/4 v1, 0x0

    .line 3052
    .local v1, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    const/4 v8, 0x0

    .line 3054
    .local v8, "emails":[Ljava/lang/String;
    move v9, v2

    .local v9, "i":I
    :goto_3c
    if-ge v9, v4, :cond_87

    .line 3056
    :try_start_3e
    iget-object v10, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_46
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3e .. :try_end_46} :catch_48

    move-object v1, v10

    .line 3061
    goto :goto_6d

    .line 3057
    :catch_48
    move-exception v10

    .line 3058
    .local v10, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "countEmailCapacity: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 3060
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "index is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3058
    const-string v12, "MtkUsimPhoneBookManager"

    invoke-static {v12, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3063
    .end local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_6d
    if-nez v1, :cond_70

    .line 3065
    goto :goto_84

    .line 3068
    :cond_70
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v8

    .line 3069
    if-eqz v8, :cond_84

    array-length v10, v8

    if-lez v10, :cond_84

    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_84

    .line 3071
    add-int/lit8 v7, v7, 0x1

    .line 3054
    :cond_84
    :goto_84
    add-int/lit8 v9, v9, 0x1

    goto :goto_3c

    .line 3074
    .end local v9    # "i":I
    :cond_87
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "countEmailCapacity: email used: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3075
    .end local v1    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v8    # "emails":[Ljava/lang/String;
    nop

    .line 3078
    return v7

    .line 3076
    :cond_9d
    return v1

    .line 3038
    .end local v0    # "pbrRecNum":I
    .end local v2    # "nOffset":I
    .end local v3    # "numAdnRecs":I
    .end local v4    # "nMax":I
    .end local v5    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v6    # "emailFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v7    # "used":I
    :cond_9e
    :goto_9e
    return v1
.end method

.method private countEmailFileSize()I
    .registers 6

    .line 3022
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3023
    .local v0, "numAdnRecs":I
    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnFileSize:I

    div-int v2, v0, v1

    .line 3025
    .local v2, "totalPbrRecNum":I
    rem-int v1, v0, v1

    if-lez v1, :cond_10

    .line 3026
    add-int/lit8 v2, v2, 0x1

    .line 3029
    :cond_10
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailInfo:[I

    if-eqz v1, :cond_1f

    array-length v3, v1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1f

    if-lez v2, :cond_1f

    .line 3030
    const/4 v3, 0x0

    aget v1, v1, v3

    div-int/2addr v1, v2

    return v1

    .line 3032
    :cond_1f
    const/16 v1, 0x64

    return v1
.end method

.method private createPbrFile(Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[B>;)V"
        }
    .end annotation

    .line 734
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_83

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_83

    .line 740
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    .line 741
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSliceCount:I

    .line 742
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_48

    .line 745
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_45

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    if-lez v2, :cond_45

    .line 746
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    aget-byte v2, v2, v0

    if-eq v2, v3, :cond_45

    .line 747
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    new-instance v3, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-direct {v3, p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;-><init>(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;[B)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 751
    .end local v1    # "i":I
    :cond_48
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_82

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    .line 752
    .local v1, "record":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;
    # getter for: Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v2

    const/16 v4, 0xc0

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 754
    .local v2, "file":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    if-eqz v2, :cond_81

    .line 755
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getSfi()I

    move-result v5

    .line 756
    .local v5, "sfi":I
    if-eq v5, v3, :cond_81

    .line 757
    iget-object v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSfiEfidTable:Landroid/util/SparseIntArray;

    # getter for: Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v4

    invoke-virtual {v6, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 760
    .end local v1    # "record":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;
    .end local v2    # "file":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v5    # "sfi":I
    :cond_81
    goto :goto_4e

    .line 761
    :cond_82
    return-void

    .line 735
    :cond_83
    :goto_83
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    .line 736
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 737
    return-void
.end method

.method private decodeGas(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "srcGas"    # Ljava/lang/String;

    .line 2099
    const-string v0, "MtkUsimPhoneBookManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[decodeGas] gas string is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_11

    const-string v2, "null"

    goto :goto_12

    :cond_11
    move-object v2, p1

    :goto_12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2101
    if-eqz p1, :cond_59

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_59

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2d

    goto :goto_59

    .line 2105
    :cond_2d
    const/4 v1, 0x0

    .line 2108
    .local v1, "retGas":Ljava/lang/String;
    :try_start_2e
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 2109
    .local v2, "ba":[B
    if-nez v2, :cond_3a

    .line 2110
    const-string v3, "gas string is null"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    return-object v1

    .line 2113
    :cond_3a
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    const-string v6, "utf-16be"

    invoke-direct {v3, v2, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_48
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2e .. :try_end_48} :catch_51
    .catch Ljava/lang/RuntimeException; {:try_start_2e .. :try_end_48} :catch_4a

    move-object v1, v3

    .line 2118
    .end local v2    # "ba":[B
    :goto_49
    goto :goto_58

    .line 2116
    :catch_4a
    move-exception v2

    .line 2117
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string v3, "[decodeGas] RuntimeException"

    invoke-static {v0, v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_58

    .line 2114
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catch_51
    move-exception v2

    .line 2115
    .local v2, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v3, "[decodeGas] implausible UnsupportedEncodingException"

    invoke-static {v0, v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "ex":Ljava/io/UnsupportedEncodingException;
    goto :goto_49

    .line 2119
    :goto_58
    return-object v1

    .line 2102
    .end local v1    # "retGas":Ljava/lang/String;
    :cond_59
    :goto_59
    const/4 v0, 0x0

    return-object v0
.end method

.method private encodeToUcs2(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "input"    # Ljava/lang/String;

    .line 2124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2126
    .local v0, "output":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 2127
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 2128
    .local v2, "hexInt":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_15
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x4

    if-ge v3, v4, :cond_25

    .line 2129
    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2128
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 2131
    .end local v3    # "j":I
    :cond_25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2126
    .end local v2    # "hexInt":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2134
    .end local v1    # "i":I
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getAdnStorageInfo()[I
    .registers 5

    .line 4742
    const-string v0, "getAdnStorageInfo"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4744
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    if-eqz v0, :cond_2c

    .line 4745
    const/4 v1, 0x0

    const/16 v2, 0x15

    .line 4746
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 4745
    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->queryPhbStorageInfo(ILandroid/os/Message;)V

    .line 4748
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4750
    :try_start_16
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1b} :catch_1e
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1c

    .line 4753
    goto :goto_26

    .line 4754
    :catchall_1c
    move-exception v1

    goto :goto_2a

    .line 4751
    :catch_1e
    move-exception v1

    .line 4752
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_1f
    const-string v2, "MtkUsimPhoneBookManager"

    const-string v3, "Interrupted Exception in getAdnStorageInfo"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4754
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_1c

    .line 4760
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnRecordSize:[I

    return-object v0

    .line 4754
    :goto_2a
    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_1c

    throw v1

    .line 4756
    :cond_2c
    const-string v0, "MtkUsimPhoneBookManager"

    const-string v1, "GetAdnStorageInfo: filehandle is null."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4757
    const/4 v0, 0x0

    return-object v0
.end method

.method private getEmailRecNum([Ljava/lang/String;II[BI)I
    .registers 14
    .param p1, "emails"    # [Ljava/lang/String;
    .param p2, "pbrRecNum"    # I
    .param p3, "nIapRecNum"    # I
    .param p4, "iapRec"    # [B
    .param p5, "tagNum"    # I

    .line 2897
    const/4 v0, 0x0

    .line 2898
    .local v0, "hasEmail":Z
    aget-byte v1, p4, p5

    const/16 v2, 0xff

    and-int/2addr v1, v2

    .line 2900
    .local v1, "recNum":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEmailRecNum recNum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2901
    const/4 v3, 0x0

    const/4 v4, -0x1

    if-nez p1, :cond_29

    .line 2902
    if-ge v1, v2, :cond_28

    if-lez v1, :cond_28

    .line 2903
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecTable:[I

    add-int/lit8 v5, v1, -0x1

    aput v3, v2, v5

    .line 2905
    :cond_28
    return v4

    .line 2908
    :cond_29
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2a
    array-length v6, p1

    if-ge v5, v6, :cond_40

    .line 2909
    aget-object v6, p1, v5

    if-eqz v6, :cond_3d

    aget-object v6, p1, v5

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3d

    .line 2910
    const/4 v0, 0x1

    .line 2911
    goto :goto_40

    .line 2908
    :cond_3d
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 2915
    .end local v5    # "i":I
    :cond_40
    :goto_40
    if-nez v0, :cond_4d

    .line 2916
    if-ge v1, v2, :cond_4c

    if-lez v1, :cond_4c

    .line 2917
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecTable:[I

    add-int/lit8 v5, v1, -0x1

    aput v3, v2, v5

    .line 2919
    :cond_4c
    return v4

    .line 2922
    :cond_4d
    iget v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailFileSize:I

    if-gt v1, v3, :cond_55

    if-ge v1, v2, :cond_55

    if-gtz v1, :cond_8c

    .line 2924
    :cond_55
    mul-int/2addr v3, p2

    .line 2925
    .local v3, "nOffset":I
    move v2, v3

    .local v2, "i":I
    :goto_57
    iget v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v5, v3

    if-ge v2, v5, :cond_8c

    .line 2926
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateEmailsByAdnIndex: mEmailRecTable["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecTable:[I

    aget v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2928
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecTable:[I

    aget v6, v5, v2

    if-nez v6, :cond_89

    .line 2929
    add-int/lit8 v6, v2, 0x1

    sub-int v1, v6, v3

    .line 2930
    aput p3, v5, v2

    .line 2931
    goto :goto_8c

    .line 2925
    :cond_89
    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    .line 2936
    .end local v2    # "i":I
    .end local v3    # "nOffset":I
    :cond_8c
    :goto_8c
    iget v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailFileSize:I

    if-le v1, v2, :cond_92

    .line 2937
    const/16 v1, 0xff

    .line 2940
    :cond_92
    if-ne v1, v4, :cond_96

    .line 2941
    const/4 v2, -0x2

    return v2

    .line 2944
    :cond_96
    return v1
.end method

.method private getUsimEfType(I)I
    .registers 6
    .param p1, "efTag"    # I

    .line 3133
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_4b

    .line 3138
    :cond_c
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    # getter for: Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v0

    .line 3140
    .local v0, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    if-nez v0, :cond_1b

    .line 3141
    return v1

    .line 3144
    :cond_1b
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 3146
    .local v2, "efFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    if-eqz v2, :cond_4a

    .line 3147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getUsimEfType] efTag: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3148
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getParentTag()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3147
    const-string v3, "MtkUsimPhoneBookManager"

    invoke-static {v3, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3149
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getParentTag()I

    move-result v1

    return v1

    .line 3151
    :cond_4a
    return v1

    .line 3134
    .end local v0    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v2    # "efFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :cond_4b
    :goto_4b
    return v1
.end method

.method private loadAasFiles()Z
    .registers 5

    .line 4117
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4118
    :try_start_3
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasForAnr:Ljava/util/ArrayList;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_76

    .line 4119
    :cond_d
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    .line 4120
    const-string v1, "MtkUsimPhoneBookManager"

    const-string v3, "No PBR files"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4121
    monitor-exit v0

    return v2

    .line 4124
    :cond_1f
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->loadPBRFiles()V

    .line 4126
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_79

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2d

    goto :goto_79

    .line 4130
    :cond_2d
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4132
    .local v1, "numRecs":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasForAnr:Ljava/util/ArrayList;

    if-nez v2, :cond_3e

    .line 4133
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasForAnr:Ljava/util/ArrayList;

    .line 4136
    :cond_3e
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasForAnr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAasFiles read num:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrNeedNotify:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4138
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->hasModemPhbEnhanceCapability(Lcom/android/internal/telephony/uicc/IccFileHandler;)Z

    move-result v2

    if-nez v2, :cond_73

    .line 4139
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6a
    if-ge v2, v1, :cond_72

    .line 4140
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readAASFileAndWait(I)V

    .line 4139
    add-int/lit8 v2, v2, 0x1

    goto :goto_6a

    .end local v2    # "i":I
    :cond_72
    goto :goto_76

    .line 4143
    :cond_73
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readAasFileAndWaitOptmz()V

    .line 4146
    .end local v1    # "numRecs":I
    :cond_76
    :goto_76
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 4127
    :cond_79
    :goto_79
    monitor-exit v0

    return v2

    .line 4147
    :catchall_7b
    move-exception v1

    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_3 .. :try_end_7d} :catchall_7b

    throw v1
.end method

.method private log(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 2682
    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->DBG:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkUsimPhoneBookManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2683
    :cond_24
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 2686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkUsimPhoneBookManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2687
    return-void
.end method

.method private queryUpbCapablityAndWait()V
    .registers 5

    .line 1931
    const-string v0, "queryUpbCapablityAndWait begin"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1933
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1934
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    const/16 v2, 0x8

    if-ge v1, v2, :cond_15

    .line 1935
    :try_start_d
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    const/4 v3, -0x1

    aput v3, v2, v1

    .line 1934
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1938
    .end local v1    # "i":I
    :cond_15
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->checkIsPhbReady()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1939
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0x13

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->queryUPBCapability(Landroid/os/Message;)V
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_aa

    .line 1942
    :try_start_26
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_2b} :catch_2c
    .catchall {:try_start_26 .. :try_end_2b} :catchall_aa

    .line 1945
    goto :goto_34

    .line 1943
    :catch_2c
    move-exception v1

    .line 1944
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2d
    const-string v2, "MtkUsimPhoneBookManager"

    const-string v3, "Interrupted Exception in queryUpbCapablityAndWait"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_34
    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_aa

    .line 1949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryUpbCapablityAndWait done:N_Anr :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",N_Email:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",N_Sne:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",N_Aas:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",L_Aas:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",N_Gas:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",L_Gas:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",N_Grp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1953
    return-void

    .line 1947
    :catchall_aa
    move-exception v1

    :try_start_ab
    monitor-exit v0
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_aa

    throw v1
.end method

.method private readAASFileAndWait(I)V
    .registers 9
    .param p1, "recId"    # I

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readAASFileAndWait "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_8f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_8f

    .line 550
    :cond_1f
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    # getter for: Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v0

    .line 551
    .local v0, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    if-nez v0, :cond_2e

    return-void

    .line 553
    :cond_2e
    const/16 v1, 0xc7

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 554
    .local v1, "aasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    if-nez v1, :cond_39

    return-void

    .line 556
    :cond_39
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v2

    .line 557
    .local v2, "aasEfid":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readAASFileAndWait-get AAS EFID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 558
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasForAnr:Ljava/util/ArrayList;

    if-eqz v3, :cond_69

    .line 559
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AAS has been loaded for Pbr number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 563
    :cond_69
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const-string v4, "MtkUsimPhoneBookManager"

    if-eqz v3, :cond_89

    .line 564
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 565
    .local v3, "msg":Landroid/os/Message;
    iput p1, v3, Landroid/os/Message;->arg1:I

    .line 566
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v5, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 569
    :try_start_7b
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_80
    .catch Ljava/lang/InterruptedException; {:try_start_7b .. :try_end_80} :catch_81

    .line 572
    goto :goto_87

    .line 570
    :catch_81
    move-exception v5

    .line 571
    .local v5, "e":Ljava/lang/InterruptedException;
    const-string v6, "Interrupted Exception in readAASFileAndWait"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    .end local v3    # "msg":Landroid/os/Message;
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :goto_87
    nop

    .line 577
    return-void

    .line 574
    :cond_89
    const-string v3, "readAASFileAndWait-IccFileHandler is null"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    return-void

    .line 546
    .end local v0    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v1    # "aasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v2    # "aasEfid":I
    :cond_8f
    :goto_8f
    return-void
.end method

.method private readAasFileAndWaitOptmz()V
    .registers 7

    .line 765
    const-string v0, "readAasFileAndWaitOptmz begin"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 767
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasForAnr:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_6f

    .line 768
    :cond_f
    const/4 v0, 0x0

    .line 770
    .local v0, "aasRecNum":I
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    const/4 v2, 0x3

    aget v3, v1, v2

    if-gez v3, :cond_4f

    .line 771
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_4e

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_22

    goto :goto_4e

    .line 776
    :cond_22
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    # getter for: Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v1

    .line 777
    .local v1, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    if-nez v1, :cond_32

    return-void

    .line 779
    :cond_32
    const/16 v3, 0xc7

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 780
    .local v3, "aasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    if-nez v3, :cond_3d

    return-void

    .line 782
    :cond_3d
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v4

    .line 783
    .local v4, "size":[I
    if-eqz v4, :cond_4d

    array-length v5, v4

    if-ne v5, v2, :cond_4d

    .line 784
    const/4 v2, 0x2

    aget v0, v4, v2

    .line 786
    .end local v1    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v3    # "aasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v4    # "size":[I
    :cond_4d
    goto :goto_51

    .line 772
    :cond_4e
    :goto_4e
    return-void

    .line 787
    :cond_4f
    aget v0, v1, v2

    .line 790
    :goto_51
    const/4 v1, 0x5

    if-le v0, v1, :cond_55

    .line 791
    const/4 v0, 0x5

    .line 794
    :cond_55
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v2, 0x1

    const/16 v3, 0x1c

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->readUPBAasList(IILandroid/os/Message;)V

    .line 797
    :try_start_61
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_66
    .catch Ljava/lang/InterruptedException; {:try_start_61 .. :try_end_66} :catch_67

    .line 800
    goto :goto_6f

    .line 798
    :catch_67
    move-exception v1

    .line 799
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "MtkUsimPhoneBookManager"

    const-string v3, "Interrupted Exception in readAasFileAndWaitOptmz"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    .end local v0    # "aasRecNum":I
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_6f
    :goto_6f
    const-string v0, "readAasFileAndWaitOptmz end"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 803
    return-void
.end method

.method private readAdnFileAndWait(I)Z
    .registers 8
    .param p1, "recId"    # I

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readAdnFileAndWait begin: recId is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mIsReset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIsReset:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 704
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 706
    .local v0, "previousSize":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 707
    const/16 v3, 0x6f3a

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->extensionEfForEf(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 706
    invoke-virtual {v2, v3, v4, v5}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    .line 710
    :try_start_34
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_39
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_39} :catch_3a

    .line 713
    goto :goto_42

    .line 711
    :catch_3a
    move-exception v2

    .line 712
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v3, "MtkUsimPhoneBookManager"

    const-string v4, "Interrupted Exception in readAdnFileAndWait"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_42
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v2, :cond_5e

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p1, :cond_5e

    .line 720
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    # setter for: Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mMasterFileRecordNum:I
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$202(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;I)I

    .line 723
    :cond_5e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readAdnFileAndWait end: recId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIsReset:Z

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 725
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIsReset:Z

    if-nez v1, :cond_80

    .line 726
    const/4 v1, 0x1

    return v1

    .line 728
    :cond_80
    const/4 v1, 0x0

    return v1
.end method

.method private readAdnFileAndWaitForUICC(I)V
    .registers 8
    .param p1, "recId"    # I

    .line 5267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readAdnFileAndWaitForUICC begin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 5269
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_e0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_e0

    .line 5274
    :cond_20
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    # getter for: Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v0

    .line 5276
    .local v0, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    if-eqz v0, :cond_df

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_36

    goto/16 :goto_df

    .line 5278
    :cond_36
    const/16 v1, 0xc0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "MtkUsimPhoneBookManager"

    if-nez v2, :cond_55

    .line 5279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readAdnFileAndWaitForUICC: No ADN tag in pbr record "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5280
    return-void

    .line 5283
    :cond_55
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v1

    .line 5285
    .local v1, "efid":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readAdnFileAndWaitForUICC: EFADN id is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 5286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UiccPhoneBookManager readAdnFileAndWaitForUICC: recId is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 5288
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    const/16 v4, 0x6f3a

    .line 5289
    invoke-virtual {v2, v4}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->extensionEfForEf(I)I

    move-result v4

    const/4 v5, 0x2

    .line 5290
    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 5288
    invoke-virtual {v2, v1, v4, v5}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    .line 5292
    :try_start_9c
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_a1
    .catch Ljava/lang/InterruptedException; {:try_start_9c .. :try_end_a1} :catch_a2

    .line 5295
    goto :goto_a8

    .line 5293
    :catch_a2
    move-exception v2

    .line 5294
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v4, "Interrupted Exception in readAdnFileAndWait"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5297
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_a8
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5302
    .local v2, "previousSize":I
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v3, :cond_ca

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, p1, :cond_ca

    .line 5303
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    # setter for: Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mMasterFileRecordNum:I
    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$202(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;I)I

    .line 5305
    :cond_ca
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readAdnFileAndWaitForUICC end"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 5306
    return-void

    .line 5276
    .end local v1    # "efid":I
    .end local v2    # "previousSize":I
    :cond_df
    :goto_df
    return-void

    .line 5270
    .end local v0    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    :cond_e0
    :goto_e0
    return-void
.end method

.method private readAnrFileAndWait(I)V
    .registers 7
    .param p1, "recId"    # I

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readAnrFileAndWait: recId is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 608
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_7c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_7c

    .line 613
    :cond_1f
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    # getter for: Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v0

    .line 614
    .local v0, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    if-nez v0, :cond_42

    .line 615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readAnrFileAndWait: No anr tag in pbr record "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 616
    return-void

    .line 619
    :cond_42
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_43
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    # getter for: Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mAnrIndex:I
    invoke-static {v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$100(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)I

    move-result v2

    if-ge v1, v2, :cond_7b

    .line 620
    mul-int/lit16 v2, v1, 0x100

    add-int/lit16 v2, v2, 0xc4

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 622
    .local v2, "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    if-nez v2, :cond_60

    .line 619
    .end local v2    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    .line 624
    .restart local v2    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :cond_60
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getParentTag()I

    move-result v3

    const/16 v4, 0xa9

    if-ne v3, v4, :cond_6e

    .line 625
    iput v1, v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mAnrIndex:I

    .line 626
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readType2Ef(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;)V

    goto :goto_7b

    .line 628
    :cond_6e
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getParentTag()I

    move-result v3

    const/16 v4, 0xa8

    if-ne v3, v4, :cond_7b

    .line 629
    iput v1, v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mAnrIndex:I

    .line 630
    invoke-direct {p0, v2, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readType1Ef(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;I)V

    .line 636
    .end local v1    # "index":I
    .end local v2    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :cond_7b
    :goto_7b
    return-void

    .line 609
    .end local v0    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    :cond_7c
    :goto_7c
    return-void
.end method

.method private readAnrFileAndWaitOptmz()V
    .registers 15

    .line 872
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_108

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_108

    .line 877
    :cond_c
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    # getter for: Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v0

    .line 878
    .local v0, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    if-nez v0, :cond_1c

    return-void

    .line 880
    :cond_1c
    const/4 v2, 0x0

    .line 881
    .local v2, "anrIndex":I
    mul-int/lit16 v3, v2, 0x100

    add-int/lit16 v3, v3, 0xc4

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 882
    .local v3, "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    if-nez v3, :cond_2a

    return-void

    .line 884
    :cond_2a
    const/4 v4, 0x0

    .line 885
    .local v4, "totalReadingNum":I
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 887
    .local v5, "numAdnRecs":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_32
    const/4 v7, 0x1

    if-ge v6, v5, :cond_95

    .line 891
    :try_start_35
    iget-object v8, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_3d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_35 .. :try_end_3d} :catch_76

    .line 896
    .local v8, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    nop

    .line 898
    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_52

    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_73

    .line 899
    :cond_52
    const/4 v9, 0x3

    new-array v9, v9, [I

    .line 900
    .local v9, "data":[I
    aput v1, v9, v1

    .line 901
    aput v6, v9, v7

    .line 902
    const/4 v10, 0x2

    aput v2, v9, v10

    .line 903
    const/4 v10, 0x0

    .line 905
    .local v10, "loadWhat":I
    const/16 v10, 0x17

    .line 906
    iget-object v11, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v11, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 907
    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    add-int/lit8 v11, v6, 0x1

    add-int/lit8 v12, v2, 0x1

    invoke-virtual {p0, v10, v9}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v7, v11, v12, v13}, Lcom/mediatek/internal/telephony/MtkRIL;->readUPBAnrEntry(IILandroid/os/Message;)V

    .line 908
    add-int/lit8 v4, v4, 0x1

    .line 887
    .end local v8    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v9    # "data":[I
    .end local v10    # "loadWhat":I
    :cond_73
    add-int/lit8 v6, v6, 0x1

    goto :goto_32

    .line 892
    :catch_76
    move-exception v8

    .line 893
    .local v8, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v9, "MtkUsimPhoneBookManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "readAnrFileAndWaitOptmz: mPhoneBookRecords IndexOutOfBoundsnumAdnRecs is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "index is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    .end local v6    # "i":I
    .end local v8    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_95
    iget-object v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    if-nez v6, :cond_a3

    .line 913
    iget-object v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 914
    return-void

    .line 916
    :cond_a3
    iget-object v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 919
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readAnrFileAndWaitOptmz before mLock.wait "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " total:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 922
    iget-object v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 924
    :try_start_cd
    iget-object v8, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V
    :try_end_d2
    .catch Ljava/lang/InterruptedException; {:try_start_cd .. :try_end_d2} :catch_d5
    .catchall {:try_start_cd .. :try_end_d2} :catchall_d3

    .line 927
    goto :goto_dd

    .line 928
    :catchall_d3
    move-exception v1

    goto :goto_106

    .line 925
    :catch_d5
    move-exception v8

    .line 926
    .local v8, "e":Ljava/lang/InterruptedException;
    :try_start_d6
    const-string v9, "MtkUsimPhoneBookManager"

    const-string v10, "Interrupted Exception in readAnrFileAndWaitOptmz"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :goto_dd
    monitor-exit v6
    :try_end_de
    .catchall {:try_start_d6 .. :try_end_de} :catchall_d3

    .line 930
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readAnrFileAndWaitOptmz after mLock.wait:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 932
    iget-object v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-ne v7, v6, :cond_105

    .line 933
    iget-object v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 935
    :cond_105
    return-void

    .line 928
    :goto_106
    :try_start_106
    monitor-exit v6
    :try_end_107
    .catchall {:try_start_106 .. :try_end_107} :catchall_d3

    throw v1

    .line 873
    .end local v0    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v2    # "anrIndex":I
    .end local v3    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v4    # "totalReadingNum":I
    .end local v5    # "numAdnRecs":I
    :cond_108
    :goto_108
    return-void
.end method

.method private readAnrRecordSize()V
    .registers 9

    .line 4046
    const-string v0, "readAnrRecordSize"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4048
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const-string v1, "MtkUsimPhoneBookManager"

    if-eqz v0, :cond_70

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_12

    goto :goto_70

    .line 4053
    :cond_12
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    # getter for: Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v0

    .line 4055
    .local v0, "fileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    if-nez v0, :cond_27

    .line 4056
    const-string v2, "readAnrRecordSize: fileIds null "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4057
    return-void

    .line 4060
    :cond_27
    const/16 v3, 0xc4

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 4062
    .local v3, "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-eqz v4, :cond_68

    if-nez v3, :cond_38

    goto :goto_68

    .line 4068
    :cond_38
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v4

    .line 4069
    .local v4, "efid":I
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v5

    .line 4071
    .local v5, "size":[I
    if-eqz v5, :cond_62

    array-length v6, v5

    const/4 v7, 0x3

    if-eq v6, v7, :cond_47

    goto :goto_62

    .line 4076
    :cond_47
    aget v1, v5, v2

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrRecordSize:I

    .line 4077
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readAnrRecordSize end size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrRecordSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4078
    return-void

    .line 4072
    :cond_62
    :goto_62
    const-string v2, "readAnrRecordSize: read record size error."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4073
    return-void

    .line 4063
    .end local v4    # "efid":I
    .end local v5    # "size":[I
    :cond_68
    :goto_68
    iput v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrRecordSize:I

    .line 4064
    const-string v2, "readAnrRecordSize: No anr tag in pbr file "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4065
    return-void

    .line 4049
    .end local v0    # "fileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v3    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :cond_70
    :goto_70
    const-string v0, "readAnrRecordSize: PBR null "

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4050
    return-void
.end method

.method private readEmailFileAndWait(I)V
    .registers 7
    .param p1, "recId"    # I

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readEmailFileAndWait "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_56

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_56

    .line 425
    :cond_1f
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    # getter for: Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v0

    .line 426
    .local v0, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    if-nez v0, :cond_2e

    return-void

    .line 428
    :cond_2e
    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 429
    .local v1, "emailFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    if-eqz v1, :cond_55

    .line 430
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v2

    .line 432
    .local v2, "emailEfid":I
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getParentTag()I

    move-result v3

    const/16 v4, 0xa8

    if-ne v3, v4, :cond_49

    .line 433
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readType1Ef(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;I)V

    .line 434
    return-void

    .line 435
    :cond_49
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getParentTag()I

    move-result v3

    const/16 v4, 0xa9

    if-ne v3, v4, :cond_55

    .line 436
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readType2Ef(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;)V

    .line 437
    return-void

    .line 440
    .end local v2    # "emailEfid":I
    :cond_55
    return-void

    .line 421
    .end local v0    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v1    # "emailFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :cond_56
    :goto_56
    return-void
.end method

.method private readEmailFileAndWaitOptmz()V
    .registers 14

    .line 807
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_100

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_100

    .line 812
    :cond_c
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    # getter for: Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v0

    .line 814
    .local v0, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    if-nez v0, :cond_1c

    return-void

    .line 816
    :cond_1c
    const/16 v2, 0xca

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 817
    .local v2, "emailFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    if-nez v2, :cond_27

    return-void

    .line 819
    :cond_27
    const/4 v3, 0x0

    .line 820
    .local v3, "totalReadingNum":I
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 821
    .local v4, "numAdnRecs":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2f
    const/4 v6, 0x1

    if-ge v5, v4, :cond_8d

    .line 825
    :try_start_32
    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_3a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_32 .. :try_end_3a} :catch_6e

    .line 830
    .local v7, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    nop

    .line 832
    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_4f

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6b

    .line 833
    :cond_4f
    const/4 v8, 0x2

    new-array v8, v8, [I

    .line 834
    .local v8, "data":[I
    aput v1, v8, v1

    .line 835
    aput v5, v8, v6

    .line 836
    const/4 v9, 0x0

    .line 838
    .local v9, "loadWhat":I
    const/16 v9, 0x16

    .line 839
    iget-object v10, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 840
    iget-object v10, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    add-int/lit8 v11, v5, 0x1

    invoke-virtual {p0, v9, v8}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v10, v11, v6, v12}, Lcom/mediatek/internal/telephony/MtkRIL;->readUPBEmailEntry(IILandroid/os/Message;)V

    .line 841
    add-int/lit8 v3, v3, 0x1

    .line 821
    .end local v7    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v8    # "data":[I
    .end local v9    # "loadWhat":I
    :cond_6b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 826
    :catch_6e
    move-exception v7

    .line 827
    .local v7, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v8, "MtkUsimPhoneBookManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readEmailFileAndWaitOptmz: mPhoneBookRecords IndexOutOfBoundsnumAdnRecs is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "index is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    .end local v5    # "i":I
    .end local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_8d
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-nez v5, :cond_9b

    .line 846
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 847
    return-void

    .line 849
    :cond_9b
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 852
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readEmailFileAndWaitOptmz before mLock.wait "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " total:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 855
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 857
    :try_start_c5
    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_ca
    .catch Ljava/lang/InterruptedException; {:try_start_c5 .. :try_end_ca} :catch_cd
    .catchall {:try_start_c5 .. :try_end_ca} :catchall_cb

    .line 860
    goto :goto_d5

    .line 861
    :catchall_cb
    move-exception v1

    goto :goto_fe

    .line 858
    :catch_cd
    move-exception v7

    .line 859
    .local v7, "e":Ljava/lang/InterruptedException;
    :try_start_ce
    const-string v8, "MtkUsimPhoneBookManager"

    const-string v9, "Interrupted Exception in readEmailFileAndWaitOptmz"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :goto_d5
    monitor-exit v5
    :try_end_d6
    .catchall {:try_start_ce .. :try_end_d6} :catchall_cb

    .line 863
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readEmailFileAndWaitOptmz after mLock.wait: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 865
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-ne v6, v5, :cond_fd

    .line 866
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 868
    :cond_fd
    return-void

    .line 861
    :goto_fe
    :try_start_fe
    monitor-exit v5
    :try_end_ff
    .catchall {:try_start_fe .. :try_end_ff} :catchall_cb

    throw v1

    .line 808
    .end local v0    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v2    # "emailFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v3    # "totalReadingNum":I
    .end local v4    # "numAdnRecs":I
    :cond_100
    :goto_100
    return-void
.end method

.method private readEmailRecordSize()V
    .registers 9

    .line 4081
    const-string v0, "readEmailRecordSize"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4083
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const-string v1, "MtkUsimPhoneBookManager"

    if-eqz v0, :cond_7f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_12

    goto :goto_7f

    .line 4088
    :cond_12
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    # getter for: Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v0

    .line 4090
    .local v0, "fileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    if-nez v0, :cond_27

    .line 4091
    const-string v2, "readEmailRecordSize: fileId null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4092
    return-void

    .line 4095
    :cond_27
    const/16 v3, 0xca

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 4097
    .local v3, "emailFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-eqz v4, :cond_77

    if-nez v3, :cond_38

    goto :goto_77

    .line 4103
    :cond_38
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v4

    .line 4104
    .local v4, "efid":I
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v5

    .line 4106
    .local v5, "size":[I
    if-eqz v5, :cond_71

    array-length v6, v5

    const/4 v7, 0x3

    if-eq v6, v7, :cond_47

    goto :goto_71

    .line 4111
    :cond_47
    const/4 v1, 0x2

    aget v1, v5, v1

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailFileSize:I

    .line 4112
    aget v1, v5, v2

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecordSize:I

    .line 4113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readEmailRecordSize Size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailFileSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecordSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4114
    return-void

    .line 4107
    :cond_71
    :goto_71
    const-string v2, "readEmailRecordSize: read record size error."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4108
    return-void

    .line 4098
    .end local v4    # "efid":I
    .end local v5    # "size":[I
    :cond_77
    :goto_77
    iput v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecordSize:I

    .line 4099
    const-string v2, "readEmailRecordSize: No email tag in pbr file "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4100
    return-void

    .line 4084
    .end local v0    # "fileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v3    # "emailFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :cond_7f
    :goto_7f
    const-string v0, "readEmailRecordSize: PBR null"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4085
    return-void
.end method

.method private readExt1FileAndWait(I)V
    .registers 8
    .param p1, "recId"    # I

    .line 5129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readExt1FileAndWait "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 5131
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_a9

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_a9

    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_28

    goto/16 :goto_a9

    .line 5135
    :cond_28
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    # getter for: Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v0

    .line 5137
    .local v0, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    const-string v1, "MtkUsimPhoneBookManager"

    if-eqz v0, :cond_a3

    const/16 v2, 0xc2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_41

    goto :goto_a3

    .line 5142
    :cond_41
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v2

    .line 5143
    .local v2, "efid":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readExt1FileAndWait-get EXT1 EFID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 5145
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mExt1FileList:Ljava/util/ArrayList;

    if-eqz v3, :cond_7e

    .line 5146
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_7e

    .line 5147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EXT1 has been loaded for Pbr number "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 5148
    return-void

    .line 5152
    :cond_7e
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v3, :cond_9d

    .line 5153
    const/16 v3, 0x3e9

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 5154
    .local v3, "msg":Landroid/os/Message;
    iput p1, v3, Landroid/os/Message;->arg1:I

    .line 5155
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v4, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 5157
    :try_start_8f
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_94
    .catch Ljava/lang/InterruptedException; {:try_start_8f .. :try_end_94} :catch_95

    .line 5160
    goto :goto_9b

    .line 5158
    :catch_95
    move-exception v4

    .line 5159
    .local v4, "e":Ljava/lang/InterruptedException;
    const-string v5, "Interrupted Exception in readExt1FileAndWait"

    invoke-static {v1, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5161
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_9b
    nop

    .line 5165
    return-void

    .line 5162
    :cond_9d
    const-string v3, "readExt1FileAndWait-IccFileHandler is null"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5163
    return-void

    .line 5138
    .end local v2    # "efid":I
    :cond_a3
    :goto_a3
    const-string v2, "readExt1FileAndWait-PBR have no Ext1 record"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5139
    return-void

    .line 5132
    .end local v0    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    :cond_a9
    :goto_a9
    return-void
.end method

.method private readGasListAndWait()V
    .registers 6

    .line 1956
    const-string v0, "readGasListAndWait begin"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1958
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1959
    :try_start_8
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    const/4 v2, 0x5

    aget v3, v1, v2

    if-gtz v3, :cond_16

    .line 1960
    const-string v1, "readGasListAndWait no need to read. return"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1961
    monitor-exit v0

    return-void

    .line 1964
    :cond_16
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v4, 0x1

    aget v1, v1, v2

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v4, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->readUPBGasList(IILandroid/os/Message;)V
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_38

    .line 1967
    :try_start_23
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_28} :catch_29
    .catchall {:try_start_23 .. :try_end_28} :catchall_38

    .line 1970
    goto :goto_31

    .line 1968
    :catch_29
    move-exception v1

    .line 1969
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2a
    const-string v2, "MtkUsimPhoneBookManager"

    const-string v3, "Interrupted Exception in readGasListAndWait"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_38

    .line 1972
    const-string v0, "readGasListAndWait end"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1973
    return-void

    .line 1971
    :catchall_38
    move-exception v1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method private readGrpIdsAndWait()V
    .registers 12

    .line 639
    const-string v0, "readGrpIdsAndWait begin"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 641
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_fd

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_fd

    .line 646
    :cond_11
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    # getter for: Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v0

    .line 647
    .local v0, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    if-nez v0, :cond_21

    return-void

    .line 649
    :cond_21
    const/16 v2, 0xc6

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 650
    .local v2, "grpFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    if-nez v2, :cond_2c

    return-void

    .line 652
    :cond_2c
    const/4 v3, 0x0

    .line 653
    .local v3, "totalReadingNum":I
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 654
    .local v4, "numAdnRecs":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_34
    const-string v6, "MtkUsimPhoneBookManager"

    const/4 v7, 0x1

    if-ge v5, v4, :cond_94

    .line 658
    :try_start_39
    iget-object v8, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_41
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_39 .. :try_end_41} :catch_77

    move-object v6, v8

    .line 663
    .local v6, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    nop

    .line 665
    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_57

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_74

    .line 666
    :cond_57
    iget-object v8, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 667
    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getRecId()I

    move-result v8

    .line 668
    .local v8, "adnIndex":I
    const/4 v9, 0x2

    new-array v9, v9, [I

    .line 670
    .local v9, "data":[I
    aput v5, v9, v1

    .line 671
    aput v8, v9, v7

    .line 672
    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v10, 0x11

    invoke-virtual {p0, v10, v9}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Lcom/mediatek/internal/telephony/MtkRIL;->readUPBGrpEntry(ILandroid/os/Message;)V

    .line 673
    add-int/lit8 v3, v3, 0x1

    .line 654
    .end local v6    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v8    # "adnIndex":I
    .end local v9    # "data":[I
    :cond_74
    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    .line 659
    :catch_77
    move-exception v8

    .line 660
    .local v8, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readGrpIdsAndWait: mPhoneBookRecords IndexOutOfBoundsException numAdnRecs is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "index is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    .end local v5    # "i":I
    .end local v8    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_94
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-nez v5, :cond_a2

    .line 678
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 679
    return-void

    .line 681
    :cond_a2
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 684
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readGrpIdsAndWait before mLock.wait "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " total:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 688
    :try_start_c9
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_ce
    .catch Ljava/lang/InterruptedException; {:try_start_c9 .. :try_end_ce} :catch_cf

    .line 691
    goto :goto_d5

    .line 689
    :catch_cf
    move-exception v5

    .line 690
    .local v5, "e":Ljava/lang/InterruptedException;
    const-string v8, "Interrupted Exception in readGrpIdsAndWait"

    invoke-static {v6, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :goto_d5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readGrpIdsAndWait after mLock.wait after mLock.wait "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 695
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-ne v7, v5, :cond_fc

    .line 696
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 698
    :cond_fc
    return-void

    .line 642
    .end local v0    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v2    # "grpFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v3    # "totalReadingNum":I
    .end local v4    # "numAdnRecs":I
    :cond_fd
    :goto_fd
    return-void
.end method

.method private readIapFileAndWait(IIZ)V
    .registers 20
    .param p1, "pbrIndex"    # I
    .param p2, "efid"    # I
    .param p3, "forceRefresh"    # Z

    .line 444
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readIapFileAndWait pbrIndex :"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",efid:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",forceRefresh:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 447
    if-gtz v3, :cond_2f

    return-void

    .line 449
    :cond_2f
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    if-nez v0, :cond_3f

    .line 450
    const-string v0, "readIapFileAndWait IapFileList is null !!!! recreate it !"

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 451
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    .line 454
    :cond_3f
    const/4 v0, 0x0

    .line 455
    .local v0, "size":[I
    iget-object v5, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRecordSize:Landroid/util/SparseArray;

    if-eqz v5, :cond_55

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_55

    .line 456
    iget-object v5, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRecordSize:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, [I

    move-object v5, v0

    goto :goto_5a

    .line 458
    :cond_55
    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v0

    move-object v5, v0

    .line 461
    .end local v0    # "size":[I
    .local v5, "size":[I
    :goto_5a
    if-eqz v5, :cond_1a5

    array-length v0, v5

    const/4 v6, 0x3

    if-eq v0, v6, :cond_62

    goto/16 :goto_1a5

    .line 469
    :cond_62
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v6, 0x0

    if-gt v0, v2, :cond_95

    .line 470
    const-string v0, "Create IAP first!"

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 471
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 472
    .local v0, "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v7, 0x0

    .line 474
    .local v7, "value":[B
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_77
    iget v9, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnFileSize:I

    if-ge v8, v9, :cond_8f

    .line 475
    aget v9, v5, v6

    new-array v7, v9, [B

    .line 476
    array-length v9, v7

    move v10, v6

    :goto_81
    if-ge v10, v9, :cond_89

    aget-byte v11, v7, v10

    .line 477
    .local v11, "tem":B
    nop

    .line 476
    .end local v11    # "tem":B
    add-int/lit8 v10, v10, 0x1

    goto :goto_81

    .line 479
    :cond_89
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    add-int/lit8 v8, v8, 0x1

    goto :goto_77

    .line 481
    .end local v8    # "i":I
    :cond_8f
    iget-object v8, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 482
    .end local v0    # "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v7    # "value":[B
    goto :goto_9d

    .line 483
    :cond_95
    const-string v0, "This IAP has been loaded!"

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 484
    if-nez v4, :cond_9d

    .line 485
    return-void

    .line 489
    :cond_9d
    :goto_9d
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 490
    .local v7, "numAdnRecs":I
    iget v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnFileSize:I

    mul-int v8, v2, v0

    .line 491
    .local v8, "nOffset":I
    add-int/2addr v0, v8

    .line 492
    .local v0, "nMax":I
    if-ge v7, v0, :cond_ac

    move v9, v7

    goto :goto_ad

    :cond_ac
    move v9, v0

    .line 494
    .end local v0    # "nMax":I
    .local v9, "nMax":I
    :goto_ad
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readIapFileAndWait nOffset "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", nMax "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 495
    const/4 v0, 0x0

    .line 496
    .local v0, "totalReadingNum":I
    move v10, v8

    move v11, v10

    move v10, v0

    .end local v0    # "totalReadingNum":I
    .local v10, "totalReadingNum":I
    .local v11, "i":I
    :goto_cd
    const/4 v12, 0x1

    if-ge v11, v9, :cond_130

    .line 499
    :try_start_d0
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_d8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d0 .. :try_end_d8} :catch_111

    .line 504
    .local v0, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    nop

    .line 506
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-gtz v13, :cond_ed

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_10d

    .line 507
    :cond_ed
    iget-object v13, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v13, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 508
    const/4 v13, 0x2

    new-array v13, v13, [I

    .line 509
    .local v13, "data":[I
    aput v2, v13, v6

    .line 510
    sub-int v14, v11, v8

    aput v14, v13, v12

    .line 511
    iget-object v12, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    add-int/lit8 v14, v11, 0x1

    sub-int/2addr v14, v8

    aget v15, v5, v6

    const/16 v6, 0xe

    invoke-virtual {v1, v6, v13}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v12, v3, v14, v15, v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->readEFLinearFixed(IIILandroid/os/Message;)V

    .line 513
    add-int/lit8 v10, v10, 0x1

    .line 496
    .end local v0    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v13    # "data":[I
    :cond_10d
    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x0

    goto :goto_cd

    .line 500
    :catch_111
    move-exception v0

    .line 501
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v6, "MtkUsimPhoneBookManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "readIapFileAndWait: mPhoneBookRecords IndexOutOfBoundsException numAdnRecs is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "index is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v11    # "i":I
    :cond_130
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_13f

    .line 518
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 519
    return-void

    .line 521
    :cond_13f
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readIapFileAndWait before mLock.wait "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " total:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 526
    iget-object v6, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 528
    :try_start_169
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_16e
    .catch Ljava/lang/InterruptedException; {:try_start_169 .. :try_end_16e} :catch_171
    .catchall {:try_start_169 .. :try_end_16e} :catchall_16f

    .line 531
    goto :goto_179

    .line 532
    :catchall_16f
    move-exception v0

    goto :goto_1a3

    .line 529
    :catch_171
    move-exception v0

    .line 530
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_172
    const-string v11, "MtkUsimPhoneBookManager"

    const-string v13, "Interrupted Exception in readIapFileAndWait"

    invoke-static {v11, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_179
    monitor-exit v6
    :try_end_17a
    .catchall {:try_start_172 .. :try_end_17a} :catchall_16f

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readIapFileAndWait after mLock.wait after mLock.wait:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 536
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-ne v12, v0, :cond_1a2

    .line 537
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 539
    :cond_1a2
    return-void

    .line 532
    :goto_1a3
    :try_start_1a3
    monitor-exit v6
    :try_end_1a4
    .catchall {:try_start_1a3 .. :try_end_1a4} :catchall_16f

    throw v0

    .line 462
    .end local v7    # "numAdnRecs":I
    .end local v8    # "nOffset":I
    .end local v9    # "nMax":I
    .end local v10    # "totalReadingNum":I
    :cond_1a5
    :goto_1a5
    const-string v0, "MtkUsimPhoneBookManager"

    const-string v6, "readIapFileAndWait: read record size error."

    invoke-static {v0, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 465
    .local v0, "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v6, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 466
    return-void
.end method

.method private readSneFileAndWait(I)V
    .registers 7
    .param p1, "recId"    # I

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readSneFileAndWait "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_6b

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_6b

    .line 587
    :cond_1f
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    # getter for: Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v0

    .line 588
    .local v0, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    if-nez v0, :cond_2e

    return-void

    .line 590
    :cond_2e
    const/16 v1, 0xc3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 591
    .local v1, "sneFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    if-nez v1, :cond_39

    return-void

    .line 593
    :cond_39
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v2

    .line 594
    .local v2, "sneEfid":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readSneFileAndWait: EFSNE id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 596
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getParentTag()I

    move-result v3

    const/16 v4, 0xa9

    if-ne v3, v4, :cond_5d

    .line 597
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readType2Ef(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;)V

    .line 598
    return-void

    .line 599
    :cond_5d
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getParentTag()I

    move-result v3

    const/16 v4, 0xa8

    if-ne v3, v4, :cond_6a

    .line 600
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readType1Ef(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;I)V

    .line 601
    return-void

    .line 603
    :cond_6a
    return-void

    .line 583
    .end local v0    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v1    # "sneFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v2    # "sneEfid":I
    :cond_6b
    :goto_6b
    return-void
.end method

.method private readSneFileAndWaitOptmz()V
    .registers 14

    .line 939
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_100

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_100

    .line 944
    :cond_c
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    # getter for: Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v0

    .line 945
    .local v0, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    if-nez v0, :cond_1c

    return-void

    .line 947
    :cond_1c
    const/16 v2, 0xc3

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 948
    .local v2, "sneFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    if-nez v2, :cond_27

    return-void

    .line 950
    :cond_27
    const/4 v3, 0x0

    .line 951
    .local v3, "totalReadingNum":I
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 952
    .local v4, "numAdnRecs":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2f
    const/4 v6, 0x1

    if-ge v5, v4, :cond_8d

    .line 956
    :try_start_32
    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_3a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_32 .. :try_end_3a} :catch_6e

    .line 961
    .local v7, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    nop

    .line 963
    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_4f

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6b

    .line 964
    :cond_4f
    const/4 v8, 0x2

    new-array v8, v8, [I

    .line 965
    .local v8, "data":[I
    aput v1, v8, v1

    .line 966
    aput v5, v8, v6

    .line 967
    const/4 v9, 0x0

    .line 969
    .local v9, "loadWhat":I
    const/16 v9, 0x18

    .line 970
    iget-object v10, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 971
    iget-object v10, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    add-int/lit8 v11, v5, 0x1

    invoke-virtual {p0, v9, v8}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v10, v11, v6, v12}, Lcom/mediatek/internal/telephony/MtkRIL;->readUPBSneEntry(IILandroid/os/Message;)V

    .line 972
    add-int/lit8 v3, v3, 0x1

    .line 952
    .end local v7    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v8    # "data":[I
    .end local v9    # "loadWhat":I
    :cond_6b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 957
    :catch_6e
    move-exception v7

    .line 958
    .local v7, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v8, "MtkUsimPhoneBookManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readSneFileAndWaitOptmz: mPhoneBookRecords IndexOutOfBoundsnumAdnRecs is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "index is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    .end local v5    # "i":I
    .end local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_8d
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-nez v5, :cond_9b

    .line 977
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 978
    return-void

    .line 980
    :cond_9b
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 983
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readSneFileAndWaitOptmz before mLock.wait "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " total:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 986
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 988
    :try_start_c5
    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_ca
    .catch Ljava/lang/InterruptedException; {:try_start_c5 .. :try_end_ca} :catch_cd
    .catchall {:try_start_c5 .. :try_end_ca} :catchall_cb

    .line 991
    goto :goto_d5

    .line 992
    :catchall_cb
    move-exception v1

    goto :goto_fe

    .line 989
    :catch_cd
    move-exception v7

    .line 990
    .local v7, "e":Ljava/lang/InterruptedException;
    :try_start_ce
    const-string v8, "MtkUsimPhoneBookManager"

    const-string v9, "Interrupted Exception in readSneFileAndWaitOptmz"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :goto_d5
    monitor-exit v5
    :try_end_d6
    .catchall {:try_start_ce .. :try_end_d6} :catchall_cb

    .line 994
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readSneFileAndWaitOptmz after mLock.wait: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 996
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-ne v6, v5, :cond_fd

    .line 997
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 999
    :cond_fd
    return-void

    .line 992
    :goto_fe
    :try_start_fe
    monitor-exit v5
    :try_end_ff
    .catchall {:try_start_fe .. :try_end_ff} :catchall_cb

    throw v1

    .line 940
    .end local v0    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v2    # "sneFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v3    # "totalReadingNum":I
    .end local v4    # "numAdnRecs":I
    :cond_100
    :goto_100
    return-void
.end method

.method private readType1Ef(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;I)V
    .registers 25
    .param p1, "file"    # Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .param p2, "anrIndex"    # I

    .line 3506
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readType1Ef:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3508
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getParentTag()I

    move-result v0

    const/16 v3, 0xa8

    if-eq v0, v3, :cond_21

    .line 3509
    return-void

    .line 3512
    :cond_21
    iget v3, v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mPbrRecord:I

    .line 3513
    .local v3, "pbrIndex":I
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3514
    .local v4, "numAdnRecs":I
    iget v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnFileSize:I

    mul-int v5, v3, v0

    .line 3515
    .local v5, "nOffset":I
    add-int/2addr v0, v5

    .line 3516
    .local v0, "nMax":I
    if-ge v4, v0, :cond_32

    move v6, v4

    goto :goto_33

    :cond_32
    move v6, v0

    .line 3517
    .end local v0    # "nMax":I
    .local v6, "nMax":I
    :goto_33
    const/4 v7, 0x0

    .line 3518
    .local v7, "what":I
    const/4 v0, 0x0

    .line 3520
    .local v0, "size":[I
    iget-object v8, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRecordSize:Landroid/util/SparseArray;

    if-eqz v8, :cond_52

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_52

    .line 3521
    iget-object v8, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRecordSize:Landroid/util/SparseArray;

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, [I

    move-object v8, v0

    goto :goto_5b

    .line 3523
    :cond_52
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v0

    move-object v8, v0

    .line 3526
    .end local v0    # "size":[I
    .local v8, "size":[I
    :goto_5b
    if-eqz v8, :cond_258

    array-length v0, v8

    const/4 v9, 0x3

    if-eq v0, v9, :cond_69

    move/from16 v19, v3

    move/from16 v21, v5

    move/from16 v20, v6

    goto/16 :goto_25e

    .line 3531
    :cond_69
    const/4 v10, 0x0

    aget v11, v8, v10

    .line 3532
    .local v11, "recordSize":I
    iget v0, v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mTag:I

    rem-int/lit16 v12, v0, 0x100

    .line 3533
    .local v12, "tag":I
    iget v0, v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mTag:I

    div-int/lit16 v13, v0, 0x100

    .line 3534
    .local v13, "fileIndex":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "readType1Ef: RecordSize = "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3536
    const/16 v0, 0xca

    if-ne v12, v0, :cond_b6

    .line 3537
    move v0, v5

    move v14, v0

    .local v14, "i":I
    :goto_8e
    iget v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v0, v5

    if-ge v14, v0, :cond_b6

    .line 3539
    :try_start_93
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecTable:[I

    aput v10, v0, v14
    :try_end_97
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_93 .. :try_end_97} :catch_9b

    .line 3543
    nop

    .line 3537
    add-int/lit8 v14, v14, 0x1

    goto :goto_8e

    .line 3540
    :catch_9b
    move-exception v0

    .line 3541
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v15, "MtkUsimPhoneBookManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "init RecTable error "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v15, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3547
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v14    # "i":I
    :cond_b6
    if-nez v11, :cond_c0

    .line 3548
    const-string v0, "MtkUsimPhoneBookManager"

    const-string v9, "readType1Ef: recordSize is 0. "

    invoke-static {v0, v9}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3549
    return-void

    .line 3552
    :cond_c0
    const/4 v0, 0x0

    .line 3554
    .local v0, "totalReadingNum":I
    move v9, v5

    move v10, v9

    move v9, v0

    .end local v0    # "totalReadingNum":I
    .local v9, "totalReadingNum":I
    .local v10, "i":I
    :goto_c4
    if-ge v10, v6, :cond_199

    .line 3558
    :try_start_c6
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_ce
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c6 .. :try_end_ce} :catch_173

    .line 3564
    .local v0, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    nop

    .line 3566
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-gtz v15, :cond_ec

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_e4

    goto :goto_ec

    :cond_e4
    move/from16 v19, v3

    move/from16 v21, v5

    move/from16 v20, v6

    goto/16 :goto_169

    .line 3567
    :cond_ec
    :goto_ec
    const/4 v15, 0x3

    new-array v14, v15, [I

    .line 3568
    .local v14, "data":[I
    iget v15, v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mPbrRecord:I

    const/16 v16, 0x0

    aput v15, v14, v16

    .line 3569
    const/4 v15, 0x1

    aput v10, v14, v15

    .line 3570
    const/4 v15, 0x2

    aput p2, v14, v15

    .line 3571
    const/4 v15, 0x0

    .line 3573
    .local v15, "loadWhat":I
    sparse-switch v12, :sswitch_data_266

    .line 3589
    move-object/from16 v18, v0

    move/from16 v19, v3

    .end local v0    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v3    # "pbrIndex":I
    .local v18, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .local v19, "pbrIndex":I
    const-string v0, "MtkUsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v6

    .end local v6    # "nMax":I
    .local v20, "nMax":I
    const-string v6, "not support tag "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mTag:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_155

    .line 3580
    .end local v18    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v19    # "pbrIndex":I
    .end local v20    # "nMax":I
    .restart local v0    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v3    # "pbrIndex":I
    .restart local v6    # "nMax":I
    :sswitch_11e
    add-int/lit8 v17, v10, 0x1

    sub-int v17, v17, v5

    move-object/from16 v18, v0

    .end local v0    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v18    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    iget v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailFileSize:I

    mul-int/2addr v0, v5

    add-int v17, v17, v0

    const/16 v16, 0x0

    aput v17, v14, v16

    .line 3581
    const/16 v15, 0xf

    .line 3582
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 3583
    move/from16 v19, v3

    move/from16 v20, v6

    goto :goto_155

    .line 3575
    .end local v18    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v0    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :sswitch_139
    move-object/from16 v18, v0

    .end local v0    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v18    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    const/16 v15, 0x10

    .line 3576
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move/from16 v19, v3

    const/4 v3, 0x1

    .end local v3    # "pbrIndex":I
    .restart local v19    # "pbrIndex":I
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 3577
    move/from16 v20, v6

    goto :goto_155

    .line 3585
    .end local v18    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v19    # "pbrIndex":I
    .restart local v0    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v3    # "pbrIndex":I
    :sswitch_148
    move-object/from16 v18, v0

    move/from16 v19, v3

    .end local v0    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v3    # "pbrIndex":I
    .restart local v18    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v19    # "pbrIndex":I
    const/16 v15, 0x12

    .line 3586
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 3587
    move/from16 v20, v6

    .line 3593
    .end local v6    # "nMax":I
    .restart local v20    # "nMax":I
    :goto_155
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v3

    add-int/lit8 v6, v10, 0x1

    sub-int/2addr v6, v5

    move/from16 v21, v5

    .end local v5    # "nOffset":I
    .local v21, "nOffset":I
    invoke-virtual {v1, v15, v14}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v3, v6, v11, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->readEFLinearFixed(IIILandroid/os/Message;)V

    .line 3595
    add-int/lit8 v9, v9, 0x1

    .line 3554
    .end local v14    # "data":[I
    .end local v15    # "loadWhat":I
    .end local v18    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :goto_169
    add-int/lit8 v10, v10, 0x1

    move/from16 v3, v19

    move/from16 v6, v20

    move/from16 v5, v21

    goto/16 :goto_c4

    .line 3559
    .end local v19    # "pbrIndex":I
    .end local v20    # "nMax":I
    .end local v21    # "nOffset":I
    .restart local v3    # "pbrIndex":I
    .restart local v5    # "nOffset":I
    .restart local v6    # "nMax":I
    :catch_173
    move-exception v0

    move/from16 v19, v3

    move/from16 v21, v5

    move/from16 v20, v6

    .line 3560
    .end local v3    # "pbrIndex":I
    .end local v5    # "nOffset":I
    .end local v6    # "nMax":I
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v19    # "pbrIndex":I
    .restart local v20    # "nMax":I
    .restart local v21    # "nOffset":I
    const-string v3, "MtkUsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readType1Ef: mPhoneBookRecords IndexOutOfBoundsException numAdnRecs is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "index is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3563
    goto :goto_19f

    .line 3554
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v19    # "pbrIndex":I
    .end local v20    # "nMax":I
    .end local v21    # "nOffset":I
    .restart local v3    # "pbrIndex":I
    .restart local v5    # "nOffset":I
    .restart local v6    # "nMax":I
    :cond_199
    move/from16 v19, v3

    move/from16 v21, v5

    move/from16 v20, v6

    .line 3599
    .end local v3    # "pbrIndex":I
    .end local v5    # "nOffset":I
    .end local v6    # "nMax":I
    .end local v10    # "i":I
    .restart local v19    # "pbrIndex":I
    .restart local v20    # "nMax":I
    .restart local v21    # "nOffset":I
    :goto_19f
    sparse-switch v12, :sswitch_data_274

    .line 3625
    const-string v0, "MtkUsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not support tag "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mTag:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_205

    .line 3609
    :sswitch_1c3
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_1d2

    .line 3610
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3611
    return-void

    .line 3613
    :cond_1d2
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3615
    goto :goto_205

    .line 3601
    :sswitch_1d9
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_1e8

    .line 3602
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3603
    return-void

    .line 3605
    :cond_1e8
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3607
    goto :goto_205

    .line 3617
    :sswitch_1ef
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_1fe

    .line 3618
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3619
    return-void

    .line 3621
    :cond_1fe
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3623
    nop

    .line 3629
    :goto_205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readType1Ef before mLock.wait "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " total:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 3631
    iget-object v3, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3633
    :try_start_22a
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_22f
    .catch Ljava/lang/InterruptedException; {:try_start_22a .. :try_end_22f} :catch_232
    .catchall {:try_start_22a .. :try_end_22f} :catchall_230

    .line 3636
    goto :goto_23a

    .line 3637
    :catchall_230
    move-exception v0

    goto :goto_256

    .line 3634
    :catch_232
    move-exception v0

    .line 3635
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_233
    const-string v5, "MtkUsimPhoneBookManager"

    const-string v6, "Interrupted Exception in readType1Ef"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3637
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_23a
    monitor-exit v3
    :try_end_23b
    .catchall {:try_start_233 .. :try_end_23b} :catchall_230

    .line 3639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readType1Ef after mLock.wait "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 3640
    return-void

    .line 3637
    :goto_256
    :try_start_256
    monitor-exit v3
    :try_end_257
    .catchall {:try_start_256 .. :try_end_257} :catchall_230

    throw v0

    .line 3526
    .end local v9    # "totalReadingNum":I
    .end local v11    # "recordSize":I
    .end local v12    # "tag":I
    .end local v13    # "fileIndex":I
    .end local v19    # "pbrIndex":I
    .end local v20    # "nMax":I
    .end local v21    # "nOffset":I
    .restart local v3    # "pbrIndex":I
    .restart local v5    # "nOffset":I
    .restart local v6    # "nMax":I
    :cond_258
    move/from16 v19, v3

    move/from16 v21, v5

    move/from16 v20, v6

    .line 3527
    .end local v3    # "pbrIndex":I
    .end local v5    # "nOffset":I
    .end local v6    # "nMax":I
    .restart local v19    # "pbrIndex":I
    .restart local v20    # "nMax":I
    .restart local v21    # "nOffset":I
    :goto_25e
    const-string v0, "MtkUsimPhoneBookManager"

    const-string v3, "readType1Ef: read record size error."

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3528
    return-void

    :sswitch_data_266
    .sparse-switch
        0xc3 -> :sswitch_148
        0xc4 -> :sswitch_139
        0xca -> :sswitch_11e
    .end sparse-switch

    :sswitch_data_274
    .sparse-switch
        0xc3 -> :sswitch_1ef
        0xc4 -> :sswitch_1d9
        0xca -> :sswitch_1c3
    .end sparse-switch
.end method

.method private readType2Ef(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;)V
    .registers 26
    .param p1, "file"    # Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 3644
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readType2Ef:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3646
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getParentTag()I

    move-result v0

    const/16 v3, 0xa9

    if-eq v0, v3, :cond_21

    .line 3647
    return-void

    .line 3650
    :cond_21
    iget v3, v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mPbrRecord:I

    .line 3651
    .local v3, "recId":I
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    iget v4, v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mPbrRecord:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    # getter for: Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v4

    .line 3653
    .local v4, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    if-nez v4, :cond_3b

    .line 3654
    const-string v0, "MtkUsimPhoneBookManager"

    const-string v5, "Error: no fileIds"

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3655
    return-void

    .line 3658
    :cond_3b
    const/16 v0, 0xc1

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 3659
    .local v5, "iapFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    if-nez v5, :cond_4e

    .line 3660
    const-string v0, "MtkUsimPhoneBookManager"

    const-string v6, "Can\'t locate EF_IAP in EF_PBR."

    invoke-static {v0, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3661
    return-void

    .line 3664
    :cond_4e
    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v0

    const/4 v6, 0x0

    invoke-direct {v1, v3, v0, v6}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readIapFileAndWait(IIZ)V

    .line 3666
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    if-eqz v0, :cond_331

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_331

    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    .line 3667
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_76

    move/from16 v22, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    goto/16 :goto_337

    .line 3672
    :cond_76
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 3673
    .local v7, "numAdnRecs":I
    iget v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnFileSize:I

    mul-int v8, v3, v0

    .line 3674
    .local v8, "nOffset":I
    add-int/2addr v0, v8

    .line 3675
    .local v0, "nMax":I
    if-ge v7, v0, :cond_85

    move v9, v7

    goto :goto_86

    :cond_85
    move v9, v0

    .line 3677
    .end local v0    # "nMax":I
    .local v9, "nMax":I
    :goto_86
    iget v0, v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mTag:I

    sparse-switch v0, :sswitch_data_340

    .line 3693
    move/from16 v22, v3

    move-object/from16 v20, v4

    .end local v3    # "recId":I
    .end local v4    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .local v20, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .local v22, "recId":I
    const-string v0, "MtkUsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no implement type2 EF "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mTag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3694
    return-void

    .line 3681
    .end local v20    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v22    # "recId":I
    .restart local v3    # "recId":I
    .restart local v4    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    :sswitch_a8
    move v0, v8

    move v10, v0

    .local v10, "i":I
    :goto_aa
    iget v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v0, v8

    if-ge v10, v0, :cond_d2

    .line 3683
    :try_start_af
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecTable:[I

    aput v6, v0, v10
    :try_end_b3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_af .. :try_end_b3} :catch_b7

    .line 3687
    nop

    .line 3681
    add-int/lit8 v10, v10, 0x1

    goto :goto_aa

    .line 3684
    :catch_b7
    move-exception v0

    .line 3685
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v11, "MtkUsimPhoneBookManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "init RecTable error "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3689
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v10    # "i":I
    :cond_d2
    goto :goto_d5

    .line 3679
    :sswitch_d3
    goto :goto_d5

    .line 3691
    :sswitch_d4
    nop

    .line 3697
    :goto_d5
    const/4 v0, 0x0

    .line 3698
    .local v0, "size":[I
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v10

    .line 3699
    .local v10, "efid":I
    iget-object v11, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRecordSize:Landroid/util/SparseArray;

    if-eqz v11, :cond_ef

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_ef

    .line 3700
    iget-object v11, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRecordSize:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, [I

    move-object v11, v0

    goto :goto_f4

    .line 3702
    :cond_ef
    invoke-virtual {v1, v10}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v0

    move-object v11, v0

    .line 3705
    .end local v0    # "size":[I
    .local v11, "size":[I
    :goto_f4
    if-eqz v11, :cond_31f

    array-length v0, v11

    const/4 v12, 0x3

    if-eq v0, v12, :cond_106

    move/from16 v22, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move/from16 v23, v8

    move/from16 v17, v9

    goto/16 :goto_329

    .line 3710
    :cond_106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "readType2: RecordSize = "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v13, v11, v6

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3711
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/util/ArrayList;

    .line 3713
    .local v13, "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_133

    .line 3714
    const-string v0, "MtkUsimPhoneBookManager"

    const-string v6, "Warning: IAP size is 0"

    invoke-static {v0, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3715
    return-void

    .line 3718
    :cond_133
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getIndex()I

    move-result v14

    .line 3719
    .local v14, "type2Index":I
    const/4 v0, 0x0

    .line 3721
    .local v0, "totalReadingNum":I
    move v15, v8

    move v6, v15

    move v15, v0

    .end local v0    # "totalReadingNum":I
    .local v6, "i":I
    .local v15, "totalReadingNum":I
    :goto_13b
    if-ge v6, v9, :cond_262

    .line 3725
    :try_start_13d
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_145
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_13d .. :try_end_145} :catch_238

    .line 3730
    .local v0, "arec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    nop

    .line 3732
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-gtz v18, :cond_167

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_15b

    goto :goto_167

    :cond_15b
    move/from16 v22, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move/from16 v23, v8

    move/from16 v17, v9

    goto/16 :goto_229

    .line 3733
    :cond_167
    :goto_167
    sub-int v12, v6, v8

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    .line 3734
    .local v12, "iapRecord":[B
    move-object/from16 v19, v0

    .end local v0    # "arec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .local v19, "arec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    aget-byte v0, v12, v14

    move-object/from16 v20, v4

    .end local v4    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .restart local v20    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    const/16 v4, 0xff

    and-int/2addr v0, v4

    .line 3736
    .local v0, "index":I
    if-lez v0, :cond_221

    if-lt v0, v4, :cond_186

    .line 3737
    move/from16 v22, v3

    move-object/from16 v21, v5

    move/from16 v23, v8

    move/from16 v17, v9

    goto/16 :goto_229

    .line 3740
    :cond_186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v5

    .end local v5    # "iapFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .local v21, "iapFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    const-string v5, "Type2 iap["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v5, v6, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3743
    const/4 v4, 0x3

    new-array v5, v4, [I

    .line 3744
    .local v5, "data":[I
    const/16 v16, 0x0

    aput v3, v5, v16

    .line 3745
    const/16 v17, 0x1

    aput v6, v5, v17

    .line 3746
    const/16 v17, 0x0

    .line 3748
    .local v17, "loadWhat":I
    iget v4, v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mTag:I

    sparse-switch v4, :sswitch_data_34e

    .line 3765
    move/from16 v22, v3

    .end local v3    # "recId":I
    .restart local v22    # "recId":I
    const-string v3, "MtkUsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v8

    .end local v8    # "nOffset":I
    .local v23, "nOffset":I
    const-string v8, "not support tag "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mTag:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v3, v17

    goto :goto_210

    .line 3756
    .end local v22    # "recId":I
    .end local v23    # "nOffset":I
    .restart local v3    # "recId":I
    .restart local v8    # "nOffset":I
    :sswitch_1d7
    add-int/lit8 v4, v6, 0x1

    sub-int/2addr v4, v8

    move/from16 v22, v3

    .end local v3    # "recId":I
    .restart local v22    # "recId":I
    iget v3, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailFileSize:I

    mul-int/2addr v3, v8

    add-int/2addr v4, v3

    const/4 v3, 0x0

    aput v4, v5, v3

    .line 3757
    const/16 v17, 0xf

    .line 3758
    iget-object v3, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 3759
    move/from16 v23, v8

    move/from16 v3, v17

    goto :goto_210

    .line 3750
    .end local v22    # "recId":I
    .restart local v3    # "recId":I
    :sswitch_1ef
    move/from16 v22, v3

    .end local v3    # "recId":I
    .restart local v22    # "recId":I
    const/16 v17, 0x10

    .line 3751
    const/4 v3, 0x2

    iget v4, v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mAnrIndex:I

    aput v4, v5, v3

    .line 3752
    iget-object v3, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 3753
    move/from16 v23, v8

    move/from16 v3, v17

    goto :goto_210

    .line 3761
    .end local v22    # "recId":I
    .restart local v3    # "recId":I
    :sswitch_203
    move/from16 v22, v3

    .end local v3    # "recId":I
    .restart local v22    # "recId":I
    const/16 v17, 0x12

    .line 3762
    iget-object v3, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 3763
    move/from16 v23, v8

    move/from16 v3, v17

    .line 3769
    .end local v8    # "nOffset":I
    .end local v17    # "loadWhat":I
    .local v3, "loadWhat":I
    .restart local v23    # "nOffset":I
    :goto_210
    iget-object v4, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move/from16 v17, v9

    const/4 v8, 0x0

    .end local v9    # "nMax":I
    .local v17, "nMax":I
    aget v9, v11, v8

    invoke-virtual {v1, v3, v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v4, v10, v0, v9, v8}, Lcom/android/internal/telephony/uicc/IccFileHandler;->readEFLinearFixed(IIILandroid/os/Message;)V

    .line 3771
    add-int/lit8 v15, v15, 0x1

    goto :goto_229

    .line 3736
    .end local v17    # "nMax":I
    .end local v21    # "iapFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v22    # "recId":I
    .end local v23    # "nOffset":I
    .local v3, "recId":I
    .local v5, "iapFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v8    # "nOffset":I
    .restart local v9    # "nMax":I
    :cond_221
    move/from16 v22, v3

    move-object/from16 v21, v5

    move/from16 v23, v8

    move/from16 v17, v9

    .line 3721
    .end local v0    # "index":I
    .end local v3    # "recId":I
    .end local v5    # "iapFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v8    # "nOffset":I
    .end local v9    # "nMax":I
    .end local v12    # "iapRecord":[B
    .end local v19    # "arec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v17    # "nMax":I
    .restart local v21    # "iapFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v22    # "recId":I
    .restart local v23    # "nOffset":I
    :goto_229
    add-int/lit8 v6, v6, 0x1

    move/from16 v9, v17

    move-object/from16 v4, v20

    move-object/from16 v5, v21

    move/from16 v3, v22

    move/from16 v8, v23

    const/4 v12, 0x3

    goto/16 :goto_13b

    .line 3726
    .end local v17    # "nMax":I
    .end local v20    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v21    # "iapFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v22    # "recId":I
    .end local v23    # "nOffset":I
    .restart local v3    # "recId":I
    .restart local v4    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .restart local v5    # "iapFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v8    # "nOffset":I
    .restart local v9    # "nMax":I
    :catch_238
    move-exception v0

    move/from16 v22, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move/from16 v23, v8

    move/from16 v17, v9

    .line 3727
    .end local v3    # "recId":I
    .end local v4    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v5    # "iapFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v8    # "nOffset":I
    .end local v9    # "nMax":I
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v17    # "nMax":I
    .restart local v20    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .restart local v21    # "iapFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v22    # "recId":I
    .restart local v23    # "nOffset":I
    const-string v3, "MtkUsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readType2Ef: mPhoneBookRecords IndexOutOfBoundsException numAdnRecs is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "index is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3729
    goto :goto_26c

    .line 3721
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v17    # "nMax":I
    .end local v20    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v21    # "iapFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v22    # "recId":I
    .end local v23    # "nOffset":I
    .restart local v3    # "recId":I
    .restart local v4    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .restart local v5    # "iapFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v8    # "nOffset":I
    .restart local v9    # "nMax":I
    :cond_262
    move/from16 v22, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move/from16 v23, v8

    move/from16 v17, v9

    .line 3775
    .end local v3    # "recId":I
    .end local v4    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v5    # "iapFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v6    # "i":I
    .end local v8    # "nOffset":I
    .end local v9    # "nMax":I
    .restart local v17    # "nMax":I
    .restart local v20    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .restart local v21    # "iapFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v22    # "recId":I
    .restart local v23    # "nOffset":I
    :goto_26c
    iget v0, v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mTag:I

    sparse-switch v0, :sswitch_data_35c

    .line 3801
    const-string v0, "MtkUsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not support tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mTag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2cc

    .line 3785
    :sswitch_28a
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_299

    .line 3786
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3787
    return-void

    .line 3789
    :cond_299
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3791
    goto :goto_2cc

    .line 3777
    :sswitch_2a0
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_2af

    .line 3778
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3779
    return-void

    .line 3781
    :cond_2af
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3783
    goto :goto_2cc

    .line 3793
    :sswitch_2b6
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_2c5

    .line 3794
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3795
    return-void

    .line 3797
    :cond_2c5
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3799
    nop

    .line 3805
    :goto_2cc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readType2Ef before mLock.wait "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " total:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 3807
    iget-object v3, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3809
    :try_start_2f1
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2f6
    .catch Ljava/lang/InterruptedException; {:try_start_2f1 .. :try_end_2f6} :catch_2f9
    .catchall {:try_start_2f1 .. :try_end_2f6} :catchall_2f7

    .line 3812
    goto :goto_301

    .line 3813
    :catchall_2f7
    move-exception v0

    goto :goto_31d

    .line 3810
    :catch_2f9
    move-exception v0

    .line 3811
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2fa
    const-string v4, "MtkUsimPhoneBookManager"

    const-string v5, "Interrupted Exception in readType2Ef"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3813
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_301
    monitor-exit v3
    :try_end_302
    .catchall {:try_start_2fa .. :try_end_302} :catchall_2f7

    .line 3814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readType2Ef after mLock.wait "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 3815
    return-void

    .line 3813
    :goto_31d
    :try_start_31d
    monitor-exit v3
    :try_end_31e
    .catchall {:try_start_31d .. :try_end_31e} :catchall_2f7

    throw v0

    .line 3705
    .end local v13    # "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v14    # "type2Index":I
    .end local v15    # "totalReadingNum":I
    .end local v17    # "nMax":I
    .end local v20    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v21    # "iapFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v22    # "recId":I
    .end local v23    # "nOffset":I
    .restart local v3    # "recId":I
    .restart local v4    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .restart local v5    # "iapFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v8    # "nOffset":I
    .restart local v9    # "nMax":I
    :cond_31f
    move/from16 v22, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move/from16 v23, v8

    move/from16 v17, v9

    .line 3706
    .end local v3    # "recId":I
    .end local v4    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v5    # "iapFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v8    # "nOffset":I
    .end local v9    # "nMax":I
    .restart local v17    # "nMax":I
    .restart local v20    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .restart local v21    # "iapFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v22    # "recId":I
    .restart local v23    # "nOffset":I
    :goto_329
    const-string v0, "MtkUsimPhoneBookManager"

    const-string v3, "readType2: read record size error."

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3707
    return-void

    .line 3666
    .end local v7    # "numAdnRecs":I
    .end local v10    # "efid":I
    .end local v11    # "size":[I
    .end local v17    # "nMax":I
    .end local v20    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v21    # "iapFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v22    # "recId":I
    .end local v23    # "nOffset":I
    .restart local v3    # "recId":I
    .restart local v4    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .restart local v5    # "iapFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :cond_331
    move/from16 v22, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    .line 3668
    .end local v3    # "recId":I
    .end local v4    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v5    # "iapFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v20    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .restart local v21    # "iapFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v22    # "recId":I
    :goto_337
    const-string v0, "MtkUsimPhoneBookManager"

    const-string v3, "Error: IAP file is empty"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3669
    return-void

    nop

    :sswitch_data_340
    .sparse-switch
        0xc3 -> :sswitch_d4
        0xc4 -> :sswitch_d3
        0xca -> :sswitch_a8
    .end sparse-switch

    :sswitch_data_34e
    .sparse-switch
        0xc3 -> :sswitch_203
        0xc4 -> :sswitch_1ef
        0xca -> :sswitch_1d7
    .end sparse-switch

    :sswitch_data_35c
    .sparse-switch
        0xc3 -> :sswitch_2b6
        0xc4 -> :sswitch_2a0
        0xca -> :sswitch_28a
    .end sparse-switch
.end method

.method private updatePhoneAdnRecordWithAnrByIndex(III[B)V
    .registers 12
    .param p1, "recId"    # I
    .param p2, "adnIndex"    # I
    .param p3, "anrIndex"    # I
    .param p4, "anrRecData"    # [B

    .line 1978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePhoneAdnRecordWithAnrByIndex the "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "th anr record is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1979
    invoke-static {p4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1978
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1983
    const/4 v0, 0x1

    aget-byte v1, p4, v0

    .line 1984
    .local v1, "anrRecLength":I
    const/4 v2, 0x0

    aget-byte v2, p4, v2

    .line 1986
    .local v2, "anrAas":I
    if-lez v1, :cond_c2

    const/16 v3, 0xb

    if-gt v1, v3, :cond_c2

    .line 1987
    const/4 v3, 0x2

    aget-byte v0, p4, v0

    invoke-static {p4, v3, v0}, Lcom/mediatek/internal/telephony/MtkPhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v0

    .line 1992
    .local v0, "anr":Ljava/lang/String;
    if-eqz v0, :cond_c2

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c2

    .line 1993
    const/4 v3, 0x0

    .line 1995
    .local v3, "aas":Ljava/lang/String;
    if-lez v2, :cond_5b

    const/16 v4, 0xff

    if-eq v2, v4, :cond_5b

    .line 1996
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasForAnr:Ljava/util/ArrayList;

    if-eqz v4, :cond_5b

    .line 1997
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasForAnr:Ljava/util/ArrayList;

    .line 1999
    .local v4, "aasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_5b

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gt v2, v5, :cond_5b

    .line 2000
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Ljava/lang/String;

    .line 2004
    .end local v4    # "aasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " updatePhoneAdnRecordWithAnrByIndex "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " th anr is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " the anrIndex is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2009
    :try_start_7f
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_87
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7f .. :try_end_87} :catch_9c

    .line 2015
    .local v4, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    nop

    .line 2017
    invoke-virtual {v4, v0, p3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setAnr(Ljava/lang/String;I)V

    .line 2018
    if-eqz v3, :cond_96

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_96

    .line 2019
    invoke-virtual {v4, v2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setAasIndex(I)V

    .line 2021
    :cond_96
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, p2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_c2

    .line 2010
    .end local v4    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :catch_9c
    move-exception v4

    .line 2011
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updatePhoneAdnRecordWithAnrByIndex: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 2013
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "index is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2011
    const-string v6, "MtkUsimPhoneBookManager"

    invoke-static {v6, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    return-void

    .line 2024
    .end local v0    # "anr":Ljava/lang/String;
    .end local v3    # "aas":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_c2
    :goto_c2
    return-void
.end method

.method private updatePhoneAdnRecordWithAnrByIndexOptmz(IIILcom/mediatek/internal/telephony/phb/PhbEntry;)V
    .registers 11
    .param p1, "recId"    # I
    .param p2, "adnIndex"    # I
    .param p3, "anrIndex"    # I
    .param p4, "anrData"    # Lcom/mediatek/internal/telephony/phb/PhbEntry;

    .line 1026
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePhoneAdnRecordWithAnrByIndexOptmz the "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " anr record:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1028
    if-eqz p4, :cond_e0

    iget-object v0, p4, Lcom/mediatek/internal/telephony/phb/PhbEntry;->number:Ljava/lang/String;

    if-eqz v0, :cond_e0

    iget-object v0, p4, Lcom/mediatek/internal/telephony/phb/PhbEntry;->number:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e0

    .line 1031
    iget v0, p4, Lcom/mediatek/internal/telephony/phb/PhbEntry;->ton:I

    const/16 v2, 0x91

    if-ne v0, v2, :cond_39

    .line 1032
    iget-object v0, p4, Lcom/mediatek/internal/telephony/phb/PhbEntry;->number:Ljava/lang/String;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkPhoneNumberUtils;->prependPlusToNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "anr":Ljava/lang/String;
    goto :goto_3b

    .line 1034
    .end local v0    # "anr":Ljava/lang/String;
    :cond_39
    iget-object v0, p4, Lcom/mediatek/internal/telephony/phb/PhbEntry;->number:Ljava/lang/String;

    .line 1038
    .restart local v0    # "anr":Ljava/lang/String;
    :goto_3b
    const/16 v2, 0x3f

    const/16 v3, 0x4e

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 1040
    const/16 v2, 0x70

    const/16 v3, 0x2c

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 1042
    const/16 v2, 0x77

    const/16 v3, 0x3b

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 1044
    iget v2, p4, Lcom/mediatek/internal/telephony/phb/PhbEntry;->index:I

    .line 1046
    .local v2, "anrAas":I
    if-eqz v0, :cond_e0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e0

    .line 1047
    const/4 v1, 0x0

    .line 1048
    .local v1, "aas":Ljava/lang/String;
    if-lez v2, :cond_79

    const/16 v3, 0xff

    if-eq v2, v3, :cond_79

    .line 1049
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasForAnr:Ljava/util/ArrayList;

    if-eqz v3, :cond_79

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v2, v3, :cond_79

    .line 1050
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasForAnr:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    .line 1053
    :cond_79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " updatePhoneAdnRecordWithAnrByIndex "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " th anr is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " the anrIndex is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1059
    :try_start_9d
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_a5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9d .. :try_end_a5} :catch_ba

    .line 1065
    .local v3, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    nop

    .line 1067
    invoke-virtual {v3, v0, p3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setAnr(Ljava/lang/String;I)V

    .line 1068
    if-eqz v1, :cond_b4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_b4

    .line 1069
    invoke-virtual {v3, v2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setAasIndex(I)V

    .line 1071
    :cond_b4
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, p2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_e0

    .line 1060
    .end local v3    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :catch_ba
    move-exception v3

    .line 1061
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePhoneAdnRecordWithAnrByIndex: mPhoneBookRecords IndexOutOfBoundsException size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 1062
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1061
    const-string v5, "MtkUsimPhoneBookManager"

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    return-void

    .line 1074
    .end local v0    # "anr":Ljava/lang/String;
    .end local v1    # "aas":Ljava/lang/String;
    .end local v2    # "anrAas":I
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_e0
    :goto_e0
    return-void
.end method

.method private updatePhoneAdnRecordWithEmailByIndex(II[B)V
    .registers 11
    .param p1, "emailIndex"    # I
    .param p2, "adnIndex"    # I
    .param p3, "emailRecData"    # [B

    .line 3820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePhoneAdnRecordWithEmailByIndex emailIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",adnIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3823
    if-nez p3, :cond_1f

    .line 3824
    return-void

    .line 3827
    :cond_1f
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_da

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2b

    goto/16 :goto_da

    .line 3831
    :cond_2b
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    .line 3832
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    # getter for: Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v0

    const/16 v2, 0xca

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getParentTag()I

    move-result v0

    const/16 v2, 0xa9

    const/4 v3, 0x1

    if-ne v0, v2, :cond_4b

    move v0, v3

    goto :goto_4c

    :cond_4b
    move v0, v1

    .line 3833
    .local v0, "emailType2":Z
    :goto_4c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePhoneAdnRecordWithEmailByIndex: Type2: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " emailData: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3834
    invoke-static {p3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3833
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3835
    array-length v2, p3

    .line 3837
    .local v2, "length":I
    if-eqz v0, :cond_76

    array-length v4, p3

    const/4 v5, 0x2

    if-lt v4, v5, :cond_76

    .line 3838
    array-length v4, p3

    add-int/lit8 v2, v4, -0x2

    .line 3841
    :cond_76
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePhoneAdnRecordWithEmailByIndex length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3843
    new-array v4, v2, [B

    .line 3845
    .local v4, "validEMailData":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_8d
    if-ge v5, v2, :cond_95

    .line 3846
    const/4 v6, -0x1

    aput-byte v6, v4, v5

    .line 3845
    add-int/lit8 v5, v5, 0x1

    goto :goto_8d

    .line 3849
    .end local v5    # "i":I
    :cond_95
    invoke-static {p3, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3852
    :try_start_98
    invoke-static {v4, v1, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v5

    .line 3853
    .local v5, "email":Ljava/lang/String;
    if-eqz v5, :cond_b5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b5

    .line 3854
    iget-object v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    .line 3855
    .local v6, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    new-array v3, v3, [Ljava/lang/String;

    aput-object v5, v3, v1

    invoke-virtual {v6, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setEmails([Ljava/lang/String;)V

    .line 3859
    .end local v6    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :cond_b5
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecTable:[I

    add-int/lit8 v3, p1, -0x1

    add-int/lit8 v6, p2, 0x1

    aput v6, v1, v3
    :try_end_bd
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_98 .. :try_end_bd} :catch_be

    .line 3862
    .end local v5    # "email":Ljava/lang/String;
    goto :goto_d9

    .line 3860
    :catch_be
    move-exception v1

    .line 3861
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[JE]updatePhoneAdnRecordWithEmailByIndex "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "MtkUsimPhoneBookManager"

    invoke-static {v5, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3863
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_d9
    return-void

    .line 3828
    .end local v0    # "emailType2":Z
    .end local v2    # "length":I
    .end local v4    # "validEMailData":[B
    :cond_da
    :goto_da
    return-void
.end method

.method private updatePhoneAdnRecordWithEmailByIndexOptmz(IILjava/lang/String;)V
    .registers 7
    .param p1, "emailIndex"    # I
    .param p2, "adnIndex"    # I
    .param p3, "email"    # Ljava/lang/String;

    .line 1004
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePhoneAdnRecordWithEmailByIndex emailIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",adnIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1007
    if-nez p3, :cond_1f

    .line 1008
    return-void

    .line 1012
    :cond_1f
    if-eqz p3, :cond_57

    :try_start_21
    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 1013
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    .line 1014
    .local v0, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setEmails([Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_21 .. :try_end_3a} :catch_3b

    goto :goto_57

    .line 1018
    .end local v0    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :catch_3b
    move-exception v0

    .line 1019
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[JE]updatePhoneAdnRecordWithEmailByIndex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkUsimPhoneBookManager"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    .line 1020
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_57
    :goto_57
    nop

    .line 1021
    :goto_58
    return-void
.end method

.method private updatePhoneAdnRecordWithGrpByIndex(II[I)V
    .registers 9
    .param p1, "recIndex"    # I
    .param p2, "adnIndex"    # I
    .param p3, "grpIds"    # [I

    .line 3467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePhoneAdnRecordWithGrpByIndex the "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "th grp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3469
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_22

    .line 3470
    return-void

    .line 3473
    :cond_22
    array-length v0, p3

    .line 3475
    .local v0, "grpSize":I
    if-lez v0, :cond_cb

    .line 3479
    :try_start_25
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_2d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_25 .. :try_end_2d} :catch_a5

    .line 3485
    .local v1, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    nop

    .line 3487
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePhoneAdnRecordWithGrpByIndex the adnIndex is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; the original index is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3488
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getRecId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3487
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3489
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3491
    .local v2, "grpIdsSb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_54
    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_65

    .line 3492
    aget v4, p3, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3493
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3491
    add-int/lit8 v3, v3, 0x1

    goto :goto_54

    .line 3496
    .end local v3    # "i":I
    :cond_65
    add-int/lit8 v3, v0, -0x1

    aget v3, p3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3497
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setGrpIds(Ljava/lang/String;)V

    .line 3498
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePhoneAdnRecordWithGrpByIndex grpIds is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3499
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3500
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePhoneAdnRecordWithGrpByIndex the rec:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_cb

    .line 3480
    .end local v1    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v2    # "grpIdsSb":Ljava/lang/StringBuilder;
    :catch_a5
    move-exception v1

    .line 3481
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePhoneAdnRecordWithGrpByIndex: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 3483
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "index is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3481
    const-string v3, "MtkUsimPhoneBookManager"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3484
    return-void

    .line 3502
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_cb
    :goto_cb
    return-void
.end method

.method private updatePhoneAdnRecordWithSneByIndex(II[B)V
    .registers 8
    .param p1, "recNum"    # I
    .param p2, "adnIndex"    # I
    .param p3, "recData"    # [B

    .line 4571
    if-nez p3, :cond_3

    .line 4572
    return-void

    .line 4575
    :cond_3
    const/4 v0, 0x0

    array-length v1, p3

    invoke-static {p3, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v0

    .line 4576
    .local v0, "sne":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePhoneAdnRecordWithSneByIndex index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " recData file is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4578
    if-eqz v0, :cond_62

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    .line 4582
    :try_start_2f
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_37
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2f .. :try_end_37} :catch_3c

    .line 4588
    .local v1, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    nop

    .line 4589
    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setSne(Ljava/lang/String;)V

    goto :goto_62

    .line 4583
    .end local v1    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :catch_3c
    move-exception v1

    .line 4584
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePhoneAdnRecordWithSneByIndex: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 4586
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "index is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4584
    const-string v3, "MtkUsimPhoneBookManager"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4587
    return-void

    .line 4591
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_62
    :goto_62
    return-void
.end method

.method private updatePhoneAdnRecordWithSneByIndexOptmz(ILjava/lang/String;)V
    .registers 6
    .param p1, "adnIndex"    # I
    .param p2, "sne"    # Ljava/lang/String;

    .line 1110
    if-nez p2, :cond_3

    .line 1111
    return-void

    .line 1114
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePhoneAdnRecordWithSneByIndex index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " recData file is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1116
    if-eqz p2, :cond_5c

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 1120
    :try_start_29
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_31
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_29 .. :try_end_31} :catch_36

    .line 1126
    .local v0, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    nop

    .line 1128
    invoke-virtual {v0, p2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setSne(Ljava/lang/String;)V

    goto :goto_5c

    .line 1121
    .end local v0    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :catch_36
    move-exception v0

    .line 1122
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePhoneAdnRecordWithSneByIndex: mPhoneBookRecords IndexOutOfBoundsException size() is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 1123
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1122
    const-string v2, "MtkUsimPhoneBookManager"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    return-void

    .line 1130
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_5c
    :goto_5c
    return-void
.end method

.method private updateType2Anr(Ljava/lang/String;ILcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;)V
    .registers 36
    .param p1, "anr"    # Ljava/lang/String;
    .param p2, "adnIndex"    # I
    .param p3, "file"    # Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 3866
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    const-string v5, "Index out of bounds."

    const-string v6, "MtkUsimPhoneBookManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateType2Ef anr:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",adnIndex:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",file:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 3868
    add-int/lit8 v0, v3, -0x1

    iget v7, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnFileSize:I

    div-int v8, v0, v7

    .line 3869
    .local v8, "pbrRecNum":I
    add-int/lit8 v0, v3, -0x1

    rem-int v7, v0, v7

    .line 3871
    .local v7, "iapRecNum":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateType2Ef pbrRecNum:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",iapRecNum:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3873
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    if-nez v0, :cond_5b

    .line 3874
    return-void

    .line 3876
    :cond_5b
    if-nez v4, :cond_5e

    .line 3877
    return-void

    .line 3880
    :cond_5e
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_2ef

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_6c

    move/from16 v24, v8

    goto/16 :goto_2f1

    .line 3883
    :cond_6c
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    iget v9, v4, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mPbrRecord:I

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    # getter for: Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v9

    .line 3884
    .local v9, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    if-nez v9, :cond_7d

    .line 3885
    return-void

    .line 3891
    :cond_7d
    :try_start_7d
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    iget v10, v4, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mPbrRecord:I

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_87
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7d .. :try_end_87} :catch_2e8

    move-object v10, v0

    .line 3895
    .local v10, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    nop

    .line 3897
    if-nez v10, :cond_8c

    .line 3898
    return-void

    .line 3900
    :cond_8c
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_98

    .line 3901
    const-string v0, "Warning: IAP size is 0"

    invoke-static {v6, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3902
    return-void

    .line 3905
    :cond_98
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, [B

    .line 3907
    .local v17, "iap":[B
    if-nez v17, :cond_a3

    .line 3908
    return-void

    .line 3911
    :cond_a3
    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getIndex()I

    move-result v0

    aget-byte v0, v17, v0

    const/16 v11, 0xff

    and-int/lit16 v15, v0, 0xff

    .line 3912
    .local v15, "index":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateType2Ef orignal index :"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3914
    const-string v13, "updateType2Anr Error: No IAP file!"

    if-eqz v2, :cond_2b2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d3

    move/from16 v24, v8

    move-object/from16 v23, v10

    move/from16 v22, v15

    goto/16 :goto_2b8

    .line 3930
    :cond_d3
    const/16 v16, 0x0

    .line 3931
    .local v16, "recNum":I
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRecordSize:Landroid/util/SparseArray;

    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v12

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, [I

    .line 3932
    .local v19, "tmpSize":[I
    const/4 v0, 0x2

    aget v12, v19, v0

    .line 3934
    .local v12, "size":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateType2Anr size :"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3935
    if-lez v15, :cond_108

    if-gt v15, v12, :cond_108

    .line 3936
    move/from16 v16, v15

    move/from16 v24, v8

    move-object/from16 v23, v10

    move/from16 v4, v16

    goto/16 :goto_1ee

    .line 3939
    :cond_108
    add-int/lit8 v0, v12, 0x1

    new-array v14, v0, [I

    .line 3941
    .local v14, "indexArray":[I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_10d
    if-gt v0, v12, :cond_116

    .line 3942
    const/16 v21, 0x0

    aput v21, v14, v0

    .line 3941
    add-int/lit8 v0, v0, 0x1

    goto :goto_10d

    .line 3945
    .end local v0    # "i":I
    :cond_116
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_117
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/16 v22, 0x1

    if-ge v0, v11, :cond_14a

    .line 3946
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    .line 3947
    .local v11, "value":[B
    if-eqz v11, :cond_13d

    .line 3948
    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getIndex()I

    move-result v23

    move/from16 v24, v8

    .end local v8    # "pbrRecNum":I
    .local v24, "pbrRecNum":I
    aget-byte v8, v11, v23

    move-object/from16 v23, v10

    const/16 v10, 0xff

    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .local v23, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    and-int/2addr v8, v10

    .line 3949
    .local v8, "tem":I
    if-lez v8, :cond_141

    if-ge v8, v10, :cond_141

    if-gt v8, v12, :cond_141

    .line 3950
    aput v22, v14, v8

    goto :goto_141

    .line 3947
    .end local v23    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v24    # "pbrRecNum":I
    .local v8, "pbrRecNum":I
    .restart local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_13d
    move/from16 v24, v8

    move-object/from16 v23, v10

    .line 3945
    .end local v8    # "pbrRecNum":I
    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v11    # "value":[B
    .restart local v23    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v24    # "pbrRecNum":I
    :cond_141
    :goto_141
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v10, v23

    move/from16 v8, v24

    const/16 v11, 0xff

    goto :goto_117

    .end local v23    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v24    # "pbrRecNum":I
    .restart local v8    # "pbrRecNum":I
    .restart local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_14a
    move/from16 v24, v8

    move-object/from16 v23, v10

    .line 3955
    .end local v0    # "i":I
    .end local v8    # "pbrRecNum":I
    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v23    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v24    # "pbrRecNum":I
    const/4 v0, 0x0

    .line 3956
    .local v0, "sharedAnr":Z
    const/4 v8, 0x0

    .line 3958
    .local v8, "file2":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_151
    iget-object v11, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_18e

    .line 3959
    iget v11, v4, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mPbrRecord:I

    if-eq v10, v11, :cond_187

    .line 3960
    iget-object v11, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    # getter for: Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;
    invoke-static {v11}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v11

    move/from16 v25, v0

    .end local v0    # "sharedAnr":Z
    .local v25, "sharedAnr":Z
    mul-int/lit16 v0, v3, 0x100

    add-int/lit16 v0, v0, 0xc4

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 3961
    if-nez v8, :cond_179

    goto :goto_189

    .line 3962
    :cond_179
    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v11

    if-ne v0, v11, :cond_190

    .line 3963
    const/4 v0, 0x1

    move/from16 v25, v0

    .end local v25    # "sharedAnr":Z
    .restart local v0    # "sharedAnr":Z
    goto :goto_190

    .line 3959
    :cond_187
    move/from16 v25, v0

    .line 3958
    .end local v0    # "sharedAnr":Z
    .restart local v25    # "sharedAnr":Z
    :goto_189
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v25

    goto :goto_151

    .end local v25    # "sharedAnr":Z
    .restart local v0    # "sharedAnr":Z
    :cond_18e
    move/from16 v25, v0

    .line 3969
    .end local v0    # "sharedAnr":Z
    .end local v10    # "i":I
    .restart local v25    # "sharedAnr":Z
    :cond_190
    :goto_190
    if-eqz v25, :cond_1dd

    .line 3973
    :try_start_192
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    iget v10, v8, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mPbrRecord:I

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3975
    .local v0, "relatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v0, :cond_1d5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_1d5

    .line 3976
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_1a5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_1d2

    .line 3977
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    .line 3978
    .restart local v11    # "value":[B
    if-eqz v11, :cond_1c7

    .line 3979
    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getIndex()I

    move-result v26

    move-object/from16 v27, v0

    .end local v0    # "relatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .local v27, "relatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    aget-byte v0, v11, v26

    const/16 v4, 0xff

    and-int/2addr v0, v4

    .line 3980
    .local v0, "tem":I
    if-lez v0, :cond_1cb

    if-ge v0, v4, :cond_1cb

    if-gt v0, v12, :cond_1cb

    .line 3981
    aput v22, v14, v0
    :try_end_1c6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_192 .. :try_end_1c6} :catch_1d8

    goto :goto_1cb

    .line 3978
    .end local v27    # "relatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .local v0, "relatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_1c7
    move-object/from16 v27, v0

    const/16 v4, 0xff

    .line 3976
    .end local v0    # "relatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v11    # "value":[B
    .restart local v27    # "relatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_1cb
    :goto_1cb
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v4, p3

    move-object/from16 v0, v27

    goto :goto_1a5

    .end local v27    # "relatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v0    # "relatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_1d2
    move-object/from16 v27, v0

    .end local v0    # "relatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v27    # "relatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    goto :goto_1d7

    .line 3975
    .end local v10    # "i":I
    .end local v27    # "relatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v0    # "relatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_1d5
    move-object/from16 v27, v0

    .line 3989
    .end local v0    # "relatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v27    # "relatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :goto_1d7
    goto :goto_1dd

    .line 3986
    .end local v27    # "relatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :catch_1d8
    move-exception v0

    .line 3987
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-static {v6, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3988
    return-void

    .line 3992
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_1dd
    :goto_1dd
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1de
    if-gt v0, v12, :cond_1ec

    .line 3993
    aget v4, v14, v0

    if-nez v4, :cond_1e9

    .line 3994
    move/from16 v16, v0

    .line 3995
    move/from16 v4, v16

    goto :goto_1ee

    .line 3992
    :cond_1e9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1de

    :cond_1ec
    move/from16 v4, v16

    .line 4000
    .end local v0    # "i":I
    .end local v8    # "file2":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v14    # "indexArray":[I
    .end local v16    # "recNum":I
    .end local v25    # "sharedAnr":Z
    .local v4, "recNum":I
    :goto_1ee
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateType2Anr final index :"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4002
    if-nez v4, :cond_205

    .line 4003
    return-void

    .line 4006
    :cond_205
    const/4 v5, 0x0

    .line 4007
    .local v5, "data":[B
    const/4 v8, 0x0

    .line 4008
    .local v8, "what":I
    const/4 v10, 0x0

    .line 4009
    .local v10, "fileId":I
    const/4 v11, 0x0

    .line 4012
    .local v11, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_start_209
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v14, v3, -0x1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_213
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_209 .. :try_end_213} :catch_215

    move-object v11, v0

    .line 4017
    goto :goto_23d

    .line 4013
    :catch_215
    move-exception v0

    .line 4014
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .local v16, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v0, "updateType2Anr: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 4016
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "index is "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v3, -0x1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4014
    invoke-static {v6, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v11

    .line 4019
    .end local v11    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v16    # "e":Ljava/lang/IndexOutOfBoundsException;
    .local v0, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :goto_23d
    if-nez v0, :cond_240

    .line 4020
    return-void

    .line 4023
    :cond_240
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAasIndex()I

    move-result v14

    .line 4024
    .local v14, "aas":I
    iget v11, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrRecordSize:I

    invoke-direct {v1, v2, v11, v14}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->buildAnrRecord(Ljava/lang/String;II)[B

    move-result-object v5

    .line 4025
    const/16 v8, 0x9

    .line 4026
    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v10

    .line 4028
    if-eqz v5, :cond_2aa

    .line 4029
    iget-object v11, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v30, 0x0

    invoke-virtual {v1, v8}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v31

    move-object/from16 v26, v11

    move/from16 v27, v10

    move/from16 v28, v4

    move-object/from16 v29, v5

    invoke-virtual/range {v26 .. v31}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 4030
    if-eq v4, v15, :cond_2a2

    .line 4031
    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getIndex()I

    move-result v11

    move-object/from16 v21, v0

    .end local v0    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .local v21, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    int-to-byte v0, v4

    aput-byte v0, v17, v11

    .line 4032
    const/16 v11, 0xc1

    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_29e

    .line 4033
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v6

    add-int/lit8 v13, v7, 0x1

    const/16 v16, 0x0

    .line 4034
    const/4 v11, 0x7

    invoke-virtual {v1, v11}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    .line 4033
    move-object v11, v0

    move/from16 v20, v12

    .end local v12    # "size":I
    .local v20, "size":I
    move v12, v6

    move v0, v14

    .end local v14    # "aas":I
    .local v0, "aas":I
    move-object/from16 v14, v17

    move/from16 v22, v15

    .end local v15    # "index":I
    .local v22, "index":I
    move-object/from16 v15, v16

    move-object/from16 v16, v18

    invoke-virtual/range {v11 .. v16}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto :goto_2b1

    .line 4038
    .end local v0    # "aas":I
    .end local v20    # "size":I
    .end local v22    # "index":I
    .restart local v12    # "size":I
    .restart local v14    # "aas":I
    .restart local v15    # "index":I
    :cond_29e
    invoke-static {v6, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4039
    return-void

    .line 4030
    .end local v21    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .local v0, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :cond_2a2
    move-object/from16 v21, v0

    move/from16 v20, v12

    move v0, v14

    move/from16 v22, v15

    .end local v12    # "size":I
    .end local v14    # "aas":I
    .end local v15    # "index":I
    .local v0, "aas":I
    .restart local v20    # "size":I
    .restart local v21    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v22    # "index":I
    goto :goto_2b1

    .line 4028
    .end local v20    # "size":I
    .end local v21    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v22    # "index":I
    .local v0, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v12    # "size":I
    .restart local v14    # "aas":I
    .restart local v15    # "index":I
    :cond_2aa
    move-object/from16 v21, v0

    move/from16 v20, v12

    move v0, v14

    move/from16 v22, v15

    .line 4043
    .end local v12    # "size":I
    .end local v14    # "aas":I
    .end local v15    # "index":I
    .local v0, "aas":I
    .restart local v20    # "size":I
    .restart local v21    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v22    # "index":I
    :goto_2b1
    return-void

    .line 3914
    .end local v0    # "aas":I
    .end local v4    # "recNum":I
    .end local v5    # "data":[B
    .end local v19    # "tmpSize":[I
    .end local v20    # "size":I
    .end local v21    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v22    # "index":I
    .end local v23    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v24    # "pbrRecNum":I
    .local v8, "pbrRecNum":I
    .local v10, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v15    # "index":I
    :cond_2b2
    move/from16 v24, v8

    move-object/from16 v23, v10

    move/from16 v22, v15

    .line 3915
    .end local v8    # "pbrRecNum":I
    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v15    # "index":I
    .restart local v22    # "index":I
    .restart local v23    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v24    # "pbrRecNum":I
    :goto_2b8
    if-lez v22, :cond_2e7

    .line 3916
    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getIndex()I

    move-result v0

    const/4 v4, -0x1

    aput-byte v4, v17, v0

    .line 3917
    const/16 v4, 0xc1

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2e3

    .line 3918
    iget-object v11, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v12

    add-int/lit8 v13, v7, 0x1

    const/4 v15, 0x0

    .line 3919
    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    .line 3918
    move-object/from16 v14, v17

    invoke-virtual/range {v11 .. v16}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto :goto_2e7

    .line 3923
    :cond_2e3
    invoke-static {v6, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3924
    return-void

    .line 3927
    :cond_2e7
    :goto_2e7
    return-void

    .line 3892
    .end local v17    # "iap":[B
    .end local v22    # "index":I
    .end local v23    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v24    # "pbrRecNum":I
    .restart local v8    # "pbrRecNum":I
    :catch_2e8
    move-exception v0

    move/from16 v24, v8

    .line 3893
    .end local v8    # "pbrRecNum":I
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v24    # "pbrRecNum":I
    invoke-static {v6, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3894
    return-void

    .line 3880
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v9    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v24    # "pbrRecNum":I
    .restart local v8    # "pbrRecNum":I
    :cond_2ef
    move/from16 v24, v8

    .line 3881
    .end local v8    # "pbrRecNum":I
    .restart local v24    # "pbrRecNum":I
    :goto_2f1
    return-void
.end method

.method private updateType2Email([Ljava/lang/String;ILcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;)I
    .registers 27
    .param p1, "emails"    # [Ljava/lang/String;
    .param p2, "adnIndex"    # I
    .param p3, "emailFile"    # Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 3297
    move-object/from16 v7, p0

    move/from16 v8, p2

    const-string v9, "MtkUsimPhoneBookManager"

    add-int/lit8 v0, v8, -0x1

    iget v1, v7, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnFileSize:I

    div-int v10, v0, v1

    .line 3298
    .local v10, "pbrRecNum":I
    add-int/lit8 v0, v8, -0x1

    rem-int v11, v0, v1

    .line 3299
    .local v11, "adnRecNum":I
    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getIndex()I

    move-result v12

    .line 3300
    .local v12, "emailType2Index":I
    const/4 v13, -0x1

    .line 3301
    .local v13, "efid":I
    const/4 v14, -0x1

    .line 3302
    .local v14, "recNum":I
    const/4 v1, 0x0

    .line 3305
    .local v1, "iapRec":[B
    const/16 v15, -0x32

    :try_start_19
    iget-object v0, v7, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3307
    .local v0, "iapFile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_ef

    .line 3308
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B
    :try_end_2d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_19 .. :try_end_2d} :catch_f5

    move-object/from16 v22, v2

    .line 3316
    .end local v0    # "iapFile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v1    # "iapRec":[B
    .local v22, "iapRec":[B
    nop

    .line 3318
    add-int/lit8 v4, v11, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v10

    move-object/from16 v5, v22

    move v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->getEmailRecNum([Ljava/lang/String;II[BI)I

    move-result v1

    .line 3320
    .end local v14    # "recNum":I
    .local v1, "recNum":I
    const/4 v0, -0x2

    if-ne v0, v1, :cond_58

    .line 3321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateType2Email: Email recNum is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3322
    const/16 v0, -0x1e

    return v0

    .line 3325
    :cond_58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateType2Email: found Email recNum is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3327
    int-to-byte v0, v1

    aput-byte v0, v22, v12

    .line 3328
    iget-object v0, v7, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    # getter for: Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v2

    .line 3330
    .local v2, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    const/16 v0, 0xc1

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_e9

    .line 3331
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v3

    .line 3338
    .end local v13    # "efid":I
    .local v3, "efid":I
    iget-object v0, v7, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    add-int/lit8 v18, v11, 0x1

    const/16 v20, 0x0

    const/4 v4, 0x7

    .line 3339
    invoke-virtual {v7, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    .line 3338
    move-object/from16 v16, v0

    move/from16 v17, v3

    move-object/from16 v19, v22

    invoke-virtual/range {v16 .. v21}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 3341
    const/16 v0, 0xff

    const/4 v4, 0x0

    if-eq v1, v0, :cond_e8

    const/4 v0, -0x1

    if-eq v1, v0, :cond_e8

    .line 3342
    const/4 v5, 0x0

    .line 3344
    .local v5, "eMailAd":Ljava/lang/String;
    if-eqz p1, :cond_e8

    .line 3346
    :try_start_ac
    aget-object v0, p1, v4
    :try_end_ae
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_ac .. :try_end_ae} :catch_b0

    move-object v5, v0

    .line 3350
    goto :goto_b8

    .line 3347
    :catch_b0
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 3348
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v6, "Error: updateType2Email no email address, continuing"

    invoke-static {v9, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3352
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_b8
    iget v0, v7, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecordSize:I

    if-gtz v0, :cond_bd

    .line 3353
    return v15

    .line 3356
    :cond_bd
    const/4 v6, 0x1

    invoke-direct {v7, v5, v8, v0, v6}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->buildEmailRecord(Ljava/lang/String;IIZ)[B

    move-result-object v0

    .line 3358
    .local v0, "eMailRecData":[B
    if-nez v0, :cond_c7

    .line 3359
    const/16 v4, -0x28

    return v4

    .line 3363
    :cond_c7
    const/16 v6, 0xca

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v3

    .line 3364
    iget-object v6, v7, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v20, 0x0

    const/16 v9, 0x8

    .line 3365
    invoke-virtual {v7, v9}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    .line 3364
    move-object/from16 v16, v6

    move/from16 v17, v3

    move/from16 v18, v1

    move-object/from16 v19, v0

    invoke-virtual/range {v16 .. v21}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 3368
    .end local v0    # "eMailRecData":[B
    .end local v5    # "eMailAd":Ljava/lang/String;
    :cond_e8
    return v4

    .line 3334
    .end local v3    # "efid":I
    .restart local v13    # "efid":I
    :cond_e9
    const-string v0, "updateType2Email Error: No IAP file!"

    invoke-static {v9, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3335
    return v15

    .line 3310
    .end local v2    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v22    # "iapRec":[B
    .local v0, "iapFile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .local v1, "iapRec":[B
    .restart local v14    # "recNum":I
    :cond_ef
    :try_start_ef
    const-string v2, "Warning: IAP size is 0"

    invoke-static {v9, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_ef .. :try_end_f4} :catch_f5

    .line 3311
    return v15

    .line 3313
    .end local v0    # "iapFile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :catch_f5
    move-exception v0

    .line 3314
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v2, "Index out of bounds."

    invoke-static {v9, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3315
    return v15
.end method


# virtual methods
.method public addContactToGroup(II)Z
    .registers 16
    .param p1, "adnIndex"    # I
    .param p2, "grpIndex"    # I

    .line 2226
    const/4 v0, 0x0

    .line 2228
    .local v0, "ret":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addContactToGroup begin adnIndex is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to grp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2230
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_167

    if-lez p1, :cond_167

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le p1, v1, :cond_2c

    goto/16 :goto_167

    .line 2235
    :cond_2c
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2239
    :try_start_2f
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_39
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2f .. :try_end_39} :catch_13c
    .catchall {:try_start_2f .. :try_end_39} :catchall_13a

    .line 2245
    .local v3, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    nop

    .line 2247
    if-eqz v3, :cond_11c

    .line 2248
    :try_start_3c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " addContactToGroup the adn index is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getRecId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " old grpList is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2249
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2248
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2250
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v4

    .line 2251
    .local v4, "grpList":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2252
    .local v5, "bExist":Z
    const/4 v6, -0x1

    .line 2255
    .local v6, "nOrder":I
    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    const/4 v8, 0x7

    aget v9, v7, v8

    .line 2256
    .local v9, "grpCount":I
    aget v10, v7, v8

    const/4 v11, 0x5

    aget v12, v7, v11

    if-le v10, v12, :cond_75

    aget v7, v7, v11

    goto :goto_77

    :cond_75
    aget v7, v7, v8

    .line 2257
    .local v7, "grpMaxCount":I
    :goto_77
    new-array v8, v9, [I

    .line 2259
    .local v8, "grpIdArray":[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_7a
    if-ge v10, v9, :cond_81

    .line 2260
    aput v2, v8, v10

    .line 2259
    add-int/lit8 v10, v10, 0x1

    goto :goto_7a

    .line 2263
    .end local v10    # "i":I
    :cond_81
    if-eqz v4, :cond_d7

    .line 2264
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v2

    const-string v10, ","

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2265
    .local v2, "grpIds":[Ljava/lang/String;
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_8e
    if-ge v10, v7, :cond_d6

    .line 2266
    aget-object v11, v2, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v8, v10

    .line 2267
    aget v11, v8, v10

    if-ne p2, v11, :cond_b2

    .line 2268
    const/4 v5, 0x1

    .line 2269
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " addContactToGroup the adn is already in the group. i is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2270
    goto :goto_d6

    .line 2273
    :cond_b2
    if-gez v6, :cond_d3

    aget v11, v8, v10

    if-eqz v11, :cond_be

    aget v11, v8, v10

    const/16 v12, 0xff

    if-ne v11, v12, :cond_d3

    .line 2274
    :cond_be
    move v6, v10

    .line 2275
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " addContactToGroup found an unsed position in the group list. i is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2265
    :cond_d3
    add-int/lit8 v10, v10, 0x1

    goto :goto_8e

    .line 2279
    .end local v2    # "grpIds":[Ljava/lang/String;
    .end local v10    # "i":I
    :cond_d6
    :goto_d6
    goto :goto_d8

    .line 2280
    :cond_d7
    const/4 v6, 0x0

    .line 2283
    :goto_d8
    if-nez v5, :cond_11c

    if-ltz v6, :cond_11c

    .line 2284
    aput p2, v8, v6

    .line 2285
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v10, 0xc

    .line 2286
    invoke-virtual {p0, v10}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 2285
    invoke-virtual {v2, p1, v8, v10}, Lcom/mediatek/internal/telephony/MtkRIL;->writeUPBGrpEntry(I[ILandroid/os/Message;)V
    :try_end_e9
    .catchall {:try_start_3c .. :try_end_e9} :catchall_13a

    .line 2289
    :try_start_e9
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_ee
    .catch Ljava/lang/InterruptedException; {:try_start_e9 .. :try_end_ee} :catch_ef
    .catchall {:try_start_e9 .. :try_end_ee} :catchall_13a

    .line 2292
    goto :goto_f7

    .line 2290
    :catch_ef
    move-exception v2

    .line 2291
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_f0
    const-string v10, "MtkUsimPhoneBookManager"

    const-string v11, "Interrupted Exception in addContactToGroup"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_f7
    iget v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    if-nez v2, :cond_11c

    .line 2295
    const/4 v0, 0x1

    .line 2296
    add-int/lit8 v2, p1, -0x1

    invoke-direct {p0, v2, p1, v8}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updatePhoneAdnRecordWithGrpByIndex(II[I)V

    .line 2297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " addContactToGroup the adn index is "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2298
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getRecId()I

    move-result v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2297
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2299
    const/4 v2, -0x1

    iput v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    .line 2303
    .end local v3    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v4    # "grpList":Ljava/lang/String;
    .end local v5    # "bExist":Z
    .end local v6    # "nOrder":I
    .end local v7    # "grpMaxCount":I
    .end local v8    # "grpIdArray":[I
    .end local v9    # "grpCount":I
    :cond_11c
    monitor-exit v1
    :try_end_11d
    .catchall {:try_start_f0 .. :try_end_11d} :catchall_13a

    .line 2304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addContactToGroup end adnIndex is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to grp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2306
    return v0

    .line 2303
    :catchall_13a
    move-exception v2

    goto :goto_165

    .line 2240
    :catch_13c
    move-exception v3

    .line 2241
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_13d
    const-string v4, "MtkUsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addContactToGroup: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 2243
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "index is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, p1, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2241
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    monitor-exit v1

    return v2

    .line 2303
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_165
    monitor-exit v1
    :try_end_166
    .catchall {:try_start_13d .. :try_end_166} :catchall_13a

    throw v2

    .line 2231
    :cond_167
    :goto_167
    const-string v1, "MtkUsimPhoneBookManager"

    const-string v3, "addContactToGroup no records or invalid index."

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    return v2
.end method

.method public checkEmailCapacityFree(I[Ljava/lang/String;Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;)Z
    .registers 11
    .param p1, "adnIndex"    # I
    .param p2, "emails"    # [Ljava/lang/String;
    .param p3, "oldAdn"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    .line 2958
    const/4 v0, 0x0

    .line 2960
    .local v0, "hasEmail":Z
    const/4 v1, 0x1

    if-eqz p2, :cond_bb

    const/16 v2, 0xca

    .line 2961
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->getUsimEfType(I)I

    move-result v2

    const/16 v3, 0xa8

    if-eq v2, v3, :cond_bb

    if-eqz p3, :cond_18

    .line 2962
    invoke-virtual {p3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_18

    goto/16 :goto_bb

    .line 2970
    :cond_18
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    array-length v3, p2

    if-ge v2, v3, :cond_30

    .line 2971
    aget-object v3, p2, v2

    if-eqz v3, :cond_2d

    aget-object v3, p2, v2

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 2972
    const/4 v0, 0x1

    .line 2973
    move v2, v0

    goto :goto_31

    .line 2970
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_30
    move v2, v0

    .line 2977
    .end local v0    # "hasEmail":Z
    .local v2, "hasEmail":Z
    :goto_31
    if-nez v2, :cond_34

    .line 2978
    return v1

    .line 2981
    :cond_34
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->hasModemPhbEnhanceCapability(Lcom/android/internal/telephony/uicc/IccFileHandler;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_56

    .line 2982
    add-int/lit8 v0, p1, -0x1

    iget v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnFileSize:I

    div-int/2addr v0, v4

    .line 2983
    .local v0, "pbrRecNum":I
    iget v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailFileSize:I

    mul-int/2addr v4, v0

    .line 2985
    .local v4, "nOffset":I
    move v5, v4

    .local v5, "i":I
    :goto_46
    iget v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v6, v4

    if-ge v5, v6, :cond_55

    .line 2986
    iget-object v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecTable:[I

    aget v6, v6, v5

    if-nez v6, :cond_52

    .line 2987
    return v1

    .line 2985
    :cond_52
    add-int/lit8 v5, v5, 0x1

    goto :goto_46

    .line 2990
    .end local v5    # "i":I
    :cond_55
    return v3

    .line 2992
    .end local v0    # "pbrRecNum":I
    .end local v4    # "nOffset":I
    :cond_56
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2993
    :try_start_59
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailInfo:[I

    if-eqz v0, :cond_61

    array-length v0, v0

    const/4 v5, 0x3

    if-eq v0, v5, :cond_87

    .line 2994
    :cond_61
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v5, 0x19

    .line 2995
    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 2994
    invoke-virtual {v0, v1, v1, v5}, Lcom/mediatek/internal/telephony/MtkRIL;->queryUPBAvailable(IILandroid/os/Message;)V
    :try_end_6c
    .catchall {:try_start_59 .. :try_end_6c} :catchall_b8

    .line 2998
    :try_start_6c
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_71
    .catch Ljava/lang/InterruptedException; {:try_start_6c .. :try_end_71} :catch_72
    .catchall {:try_start_6c .. :try_end_71} :catchall_b8

    .line 3001
    goto :goto_7a

    .line 2999
    :catch_72
    move-exception v0

    .line 3000
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_73
    const-string v5, "MtkUsimPhoneBookManager"

    const-string v6, "Interrupted Exception in CheckEmailCapacityFree"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3003
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_7a
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbDone:I

    const/4 v5, -0x1

    if-ne v0, v5, :cond_81

    .line 3004
    monitor-exit v4

    return v1

    .line 3006
    :cond_81
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->countEmailFileSize()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailFileSize:I

    .line 3008
    :cond_87
    monitor-exit v4
    :try_end_88
    .catchall {:try_start_73 .. :try_end_88} :catchall_b8

    .line 3009
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->countEmailCapacity(I)I

    move-result v0

    .line 3010
    .local v0, "used":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CheckEmailCapacityFree: mEmailFileSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailFileSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " used: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " adnIndex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 3013
    iget v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailFileSize:I

    if-ge v0, v4, :cond_b7

    .line 3014
    return v1

    .line 3016
    :cond_b7
    return v3

    .line 3008
    .end local v0    # "used":I
    :catchall_b8
    move-exception v0

    :try_start_b9
    monitor-exit v4
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_b8

    throw v0

    .line 2967
    .end local v2    # "hasEmail":Z
    .local v0, "hasEmail":Z
    :cond_bb
    :goto_bb
    return v1
.end method

.method public checkEmailLength([Ljava/lang/String;)Z
    .registers 12
    .param p1, "emails"    # [Ljava/lang/String;

    .line 3161
    const/4 v0, 0x1

    if-eqz p1, :cond_6d

    const/4 v1, 0x0

    aget-object v2, p1, v1

    if-eqz v2, :cond_6d

    .line 3163
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v2, :cond_6c

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_13

    goto :goto_6c

    .line 3167
    :cond_13
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    # getter for: Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v2

    .line 3168
    .local v2, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    if-nez v2, :cond_22

    .line 3169
    return v0

    .line 3172
    :cond_22
    const/16 v3, 0xca

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 3173
    .local v3, "emailFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    if-nez v3, :cond_2d

    .line 3174
    return v0

    .line 3177
    :cond_2d
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getParentTag()I

    move-result v4

    const/16 v5, 0xa9

    if-ne v4, v5, :cond_37

    move v4, v0

    goto :goto_38

    :cond_37
    move v4, v1

    .line 3178
    .local v4, "emailType2":Z
    :goto_38
    iget v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecordSize:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_42

    if-eqz v4, :cond_42

    .line 3179
    add-int/lit8 v5, v5, -0x2

    goto :goto_43

    :cond_42
    nop

    .line 3180
    .local v5, "maxDataLength":I
    :goto_43
    aget-object v7, p1, v1

    invoke-static {v7}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v7

    .line 3182
    .local v7, "eMailData":[B
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkEmailLength eMailData.length="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", maxDataLength="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 3185
    if-eq v5, v6, :cond_6d

    array-length v6, v7

    if-le v6, v5, :cond_6d

    .line 3186
    return v1

    .line 3164
    .end local v2    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v3    # "emailFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v4    # "emailType2":Z
    .end local v5    # "maxDataLength":I
    .end local v7    # "eMailData":[B
    :cond_6c
    :goto_6c
    return v0

    .line 3189
    :cond_6d
    return v0
.end method

.method public checkSneCapacityFree(ILjava/lang/String;Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;)Z
    .registers 10
    .param p1, "adnIndex"    # I
    .param p2, "sne"    # Ljava/lang/String;
    .param p3, "oldAdn"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    .line 3092
    const/4 v0, 0x0

    .line 3094
    .local v0, "oldSne":Ljava/lang/String;
    if-eqz p3, :cond_7

    .line 3095
    invoke-virtual {p3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getSne()Ljava/lang/String;

    move-result-object v0

    .line 3098
    :cond_7
    const/4 v1, 0x1

    if-eqz p2, :cond_60

    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_60

    const/16 v2, 0xc3

    .line 3099
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->getUsimEfType(I)I

    move-result v2

    const/16 v3, 0xa8

    if-eq v2, v3, :cond_60

    if-eqz v0, :cond_27

    const-string v2, ""

    .line 3100
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    goto :goto_60

    .line 3108
    :cond_27
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->hasModemPhbEnhanceCapability(Lcom/android/internal/telephony/uicc/IccFileHandler;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 3110
    return v1

    .line 3112
    :cond_30
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3113
    :try_start_33
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSneInfo:[I

    if-nez v3, :cond_51

    .line 3114
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v4, 0x2

    const/16 v5, 0x1b

    .line 3115
    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 3114
    invoke-virtual {v3, v4, v1, v5}, Lcom/mediatek/internal/telephony/MtkRIL;->queryUPBAvailable(IILandroid/os/Message;)V
    :try_end_43
    .catchall {:try_start_33 .. :try_end_43} :catchall_5d

    .line 3117
    :try_start_43
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_48
    .catch Ljava/lang/InterruptedException; {:try_start_43 .. :try_end_48} :catch_49
    .catchall {:try_start_43 .. :try_end_48} :catchall_5d

    .line 3120
    goto :goto_51

    .line 3118
    :catch_49
    move-exception v3

    .line 3119
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_4a
    const-string v4, "MtkUsimPhoneBookManager"

    const-string v5, "Interrupted Exception in checkSneCapacityFree"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3122
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_51
    :goto_51
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_4a .. :try_end_52} :catchall_5d

    .line 3124
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSneInfo:[I

    if-eqz v2, :cond_5b

    aget v2, v2, v1

    if-lez v2, :cond_5b

    .line 3125
    return v1

    .line 3127
    :cond_5b
    const/4 v1, 0x0

    return v1

    .line 3122
    :catchall_5d
    move-exception v1

    :try_start_5e
    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw v1

    .line 3105
    :cond_60
    :goto_60
    return v1
.end method

.method public getAdnRecordsCapacityExt()[I
    .registers 12

    .line 4674
    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 4677
    .local v0, "capacity":[I
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRefreshAdnInfo:Z

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-nez v1, :cond_18

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRefreshEmailInfo:Z

    if-nez v1, :cond_18

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRefreshAnrInfo:Z

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnRecordSize:[I

    if-eqz v1, :cond_18

    array-length v1, v1

    if-eq v1, v2, :cond_1d

    .line 4679
    :cond_18
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->getAdnStorageInfo()[I

    .line 4680
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRefreshAdnInfo:Z

    .line 4683
    :cond_1d
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnRecordSize:[I

    const/4 v4, 0x0

    if-eqz v1, :cond_137

    array-length v5, v1

    if-eq v5, v2, :cond_27

    goto/16 :goto_137

    .line 4686
    :cond_27
    const/4 v5, 0x1

    aget v6, v1, v5

    aput v6, v0, v3

    .line 4687
    aget v1, v1, v3

    aput v1, v0, v5

    .line 4691
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRefreshEmailInfo:Z

    const/4 v6, 0x3

    if-nez v1, :cond_3c

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailInfo:[I

    if-eqz v1, :cond_3c

    array-length v1, v1

    if-eq v1, v6, :cond_5e

    .line 4692
    :cond_3c
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v7, 0x19

    .line 4693
    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 4692
    invoke-virtual {v1, v5, v5, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->queryUPBAvailable(IILandroid/os/Message;)V

    .line 4694
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4696
    :try_start_4a
    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_4f
    .catch Ljava/lang/InterruptedException; {:try_start_4a .. :try_end_4f} :catch_53
    .catchall {:try_start_4a .. :try_end_4f} :catchall_50

    .line 4699
    goto :goto_5b

    .line 4700
    :catchall_50
    move-exception v2

    goto/16 :goto_135

    .line 4697
    :catch_53
    move-exception v7

    .line 4698
    .local v7, "e":Ljava/lang/InterruptedException;
    :try_start_54
    const-string v8, "MtkUsimPhoneBookManager"

    const-string v9, "Interrupted Exception in getAdnRecordsCapacityExt"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4700
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :goto_5b
    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_54 .. :try_end_5c} :catchall_50

    .line 4701
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRefreshEmailInfo:Z

    .line 4704
    :cond_5e
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailInfo:[I

    if-eqz v1, :cond_134

    array-length v7, v1

    if-eq v7, v6, :cond_67

    goto/16 :goto_134

    .line 4707
    :cond_67
    aget v7, v1, v3

    const/4 v8, 0x2

    aput v7, v0, v8

    .line 4708
    aget v7, v1, v3

    aget v1, v1, v5

    sub-int/2addr v7, v1

    aput v7, v0, v6

    .line 4712
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRefreshAnrInfo:Z

    if-nez v1, :cond_8c

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_8c

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8c

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrInfo:Ljava/util/ArrayList;

    .line 4713
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    array-length v1, v1

    if-eq v1, v6, :cond_ae

    .line 4714
    :cond_8c
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v7, 0x1a

    .line 4715
    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 4714
    invoke-virtual {v1, v3, v5, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->queryUPBAvailable(IILandroid/os/Message;)V

    .line 4716
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4718
    :try_start_9a
    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_9f
    .catch Ljava/lang/InterruptedException; {:try_start_9a .. :try_end_9f} :catch_a3
    .catchall {:try_start_9a .. :try_end_9f} :catchall_a0

    .line 4721
    goto :goto_ab

    .line 4722
    :catchall_a0
    move-exception v2

    goto/16 :goto_132

    .line 4719
    :catch_a3
    move-exception v7

    .line 4720
    .restart local v7    # "e":Ljava/lang/InterruptedException;
    :try_start_a4
    const-string v9, "MtkUsimPhoneBookManager"

    const-string v10, "Interrupted Exception in getAdnRecordsCapacityExt"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4722
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :goto_ab
    monitor-exit v1
    :try_end_ac
    .catchall {:try_start_a4 .. :try_end_ac} :catchall_a0

    .line 4723
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRefreshAnrInfo:Z

    .line 4726
    :cond_ae
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_131

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_131

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    array-length v1, v1

    if-eq v1, v6, :cond_c4

    goto :goto_131

    .line 4729
    :cond_c4
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    aget v1, v1, v3

    aput v1, v0, v2

    .line 4730
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    aget v1, v1, v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    aget v4, v4, v5

    sub-int/2addr v1, v4

    const/4 v4, 0x5

    aput v1, v0, v4

    .line 4733
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAdnRecordsCapacityExt: max adn="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v0, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", used adn="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v0, v5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", max email="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v0, v8

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", used email="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v0, v6

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", max anr="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", used anr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4738
    return-object v0

    .line 4727
    :cond_131
    :goto_131
    return-object v4

    .line 4722
    :goto_132
    :try_start_132
    monitor-exit v1
    :try_end_133
    .catchall {:try_start_132 .. :try_end_133} :catchall_a0

    throw v2

    .line 4705
    :cond_134
    :goto_134
    return-object v4

    .line 4700
    :goto_135
    :try_start_135
    monitor-exit v1
    :try_end_136
    .catchall {:try_start_135 .. :try_end_136} :catchall_50

    throw v2

    .line 4684
    :cond_137
    :goto_137
    return-object v4
.end method

.method public getAnrCount()I
    .registers 6

    .line 4456
    const-string v0, "getAnrCount begin"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4458
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4459
    :try_start_8
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-gez v1, :cond_2e

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->checkIsPhbReady()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 4460
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0x13

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->queryUPBCapability(Landroid/os/Message;)V
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_6c

    .line 4462
    :try_start_20
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_25} :catch_26
    .catchall {:try_start_20 .. :try_end_25} :catchall_6c

    .line 4465
    goto :goto_2e

    .line 4463
    :catch_26
    move-exception v1

    .line 4464
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_27
    const-string v3, "MtkUsimPhoneBookManager"

    const-string v4, "Interrupted Exception in getAnrCount"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4467
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_2e
    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_6c

    .line 4469
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrRecordSize:I

    if-gtz v0, :cond_4c

    .line 4470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAnrCount end mAnrRecordSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrRecordSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4471
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrRecordSize:I

    return v0

    .line 4473
    :cond_4c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAnrCount done: N_ANR is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4476
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    aget v0, v0, v2

    if-lez v0, :cond_6b

    const/4 v2, 0x1

    :cond_6b
    return v2

    .line 4467
    :catchall_6c
    move-exception v1

    :try_start_6d
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw v1
.end method

.method public getEmailCount()I
    .registers 6

    .line 4480
    const-string v0, "getEmailCount begin"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4482
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4483
    :try_start_8
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    if-gez v1, :cond_2e

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->checkIsPhbReady()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 4484
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0x13

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->queryUPBCapability(Landroid/os/Message;)V
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_6d

    .line 4487
    :try_start_20
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_25} :catch_26
    .catchall {:try_start_20 .. :try_end_25} :catchall_6d

    .line 4490
    goto :goto_2e

    .line 4488
    :catch_26
    move-exception v1

    .line 4489
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_27
    const-string v3, "MtkUsimPhoneBookManager"

    const-string v4, "Interrupted Exception in getEmailCount"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4492
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_2e
    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_6d

    .line 4494
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecordSize:I

    if-gtz v0, :cond_4c

    .line 4495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEmailCount end mEmailRecordSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecordSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4496
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecordSize:I

    return v0

    .line 4499
    :cond_4c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEmailCount done: N_EMAIL is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4501
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    aget v0, v0, v2

    if-lez v0, :cond_6b

    goto :goto_6c

    :cond_6b
    const/4 v2, 0x0

    :goto_6c
    return v2

    .line 4492
    :catchall_6d
    move-exception v1

    :try_start_6e
    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw v1
.end method

.method public getPhonebookMemStorageExt()[Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;
    .registers 24

    .line 4764
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    const/4 v4, 0x0

    if-ne v0, v2, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    move v0, v4

    :goto_10
    move v2, v0

    .line 4766
    .local v2, "is3G":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPhonebookMemStorageExt isUsim "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4768
    if-nez v2, :cond_2c

    .line 4769
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->getPhonebookMemStorageExt2G()[Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;

    move-result-object v0

    return-object v0

    .line 4772
    :cond_2c
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_39

    .line 4773
    :cond_36
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->loadPBRFiles()V

    .line 4776
    :cond_39
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_4d2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_47

    move/from16 v19, v2

    goto/16 :goto_4d4

    .line 4780
    :cond_47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPhonebookMemStorageExt slice "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4781
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v5, v0, [Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;

    .line 4783
    .local v5, "response":[Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6a
    iget-object v6, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_7c

    .line 4784
    new-instance v6, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;

    invoke-direct {v6}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;-><init>()V

    aput-object v6, v5, v0

    .line 4783
    add-int/lit8 v0, v0, 0x1

    goto :goto_6a

    .line 4787
    .end local v0    # "i":I
    :cond_7c
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 4788
    const-string v0, "MtkUsimPhoneBookManager"

    const-string v3, "mPhoneBookRecords has not been loaded."

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4789
    return-object v5

    .line 4792
    :cond_8c
    const/4 v0, 0x0

    .line 4793
    .local v0, "size":[I
    const/4 v6, 0x0

    .line 4794
    .local v6, "used":I
    const/4 v7, 0x0

    .line 4796
    .local v7, "currentTotal":I
    const/4 v8, 0x0

    .local v8, "pbrIndex":I
    :goto_90
    iget-object v9, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_4a5

    .line 4797
    iget-object v9, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    # getter for: Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;
    invoke-static {v9}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v9

    .line 4798
    .local v9, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    iget-object v10, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 4799
    .local v10, "numAdnRecs":I
    iget v11, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnFileSize:I

    mul-int v12, v8, v11

    .line 4800
    .local v12, "nOffset":I
    add-int/2addr v11, v12

    .line 4801
    .local v11, "nMax":I
    if-ge v10, v11, :cond_b3

    move v13, v10

    goto :goto_b4

    :cond_b3
    move v13, v11

    :goto_b4
    move v11, v13

    .line 4804
    const/16 v13, 0xc0

    invoke-virtual {v9, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 4806
    .local v13, "adnFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    const/4 v14, 0x2

    if-eqz v13, :cond_190

    .line 4807
    invoke-virtual {v13}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v15

    invoke-virtual {v1, v15}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v15

    .line 4808
    .end local v0    # "size":[I
    .local v15, "size":[I
    if-eqz v15, :cond_e3

    .line 4809
    aget-object v0, v5, v8

    aget v3, v15, v4

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setAdnLength(I)V

    .line 4810
    if-lez v7, :cond_dc

    .line 4811
    aget-object v0, v5, v8

    aget v3, v15, v14

    add-int/2addr v3, v7

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setAdnTotal(I)V

    goto :goto_e3

    .line 4813
    :cond_dc
    aget-object v0, v5, v8

    aget v3, v15, v14

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setAdnTotal(I)V

    .line 4817
    :cond_e3
    :goto_e3
    aget-object v0, v5, v8

    invoke-virtual {v13}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getParentTag()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setAdnType(I)V

    .line 4818
    aget-object v0, v5, v8

    add-int/lit8 v3, v8, 0x1

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setSliceIndex(I)V

    .line 4820
    const/4 v0, 0x0

    .line 4822
    .end local v6    # "used":I
    .local v0, "used":I
    const/4 v3, 0x0

    .line 4824
    .local v3, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    move v6, v12

    move v14, v0

    .end local v0    # "used":I
    .local v6, "j":I
    .local v14, "used":I
    :goto_f7
    if-ge v6, v11, :cond_172

    .line 4826
    :try_start_f9
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_101
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f9 .. :try_end_101} :catch_105

    move-object v3, v0

    .line 4831
    move/from16 v19, v2

    goto :goto_12e

    .line 4827
    :catch_105
    move-exception v0

    .line 4828
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "MtkUsimPhoneBookManager"

    move-object/from16 v18, v0

    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .local v18, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v2

    .end local v2    # "is3G":Z
    .local v19, "is3G":Z
    const-string v2, "getPhonebookMemStorageExt: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 4830
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "index is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4828
    invoke-static {v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4832
    .end local v18    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_12e
    if-eqz v3, :cond_16c

    .line 4833
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_140

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_150

    .line 4834
    :cond_140
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16c

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_16c

    .line 4835
    :cond_150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adn: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4836
    add-int/lit8 v14, v14, 0x1

    .line 4837
    const/4 v0, 0x0

    move-object v3, v0

    .line 4824
    :cond_16c
    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v19

    const/4 v4, 0x0

    goto :goto_f7

    .end local v19    # "is3G":Z
    .restart local v2    # "is3G":Z
    :cond_172
    move/from16 v19, v2

    .line 4840
    .end local v2    # "is3G":Z
    .end local v6    # "j":I
    .restart local v19    # "is3G":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adn used "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4841
    aget-object v0, v5, v8

    invoke-virtual {v0, v14}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setAdnUsed(I)V

    move v6, v14

    move-object v0, v15

    goto :goto_192

    .line 4806
    .end local v3    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v14    # "used":I
    .end local v15    # "size":[I
    .end local v19    # "is3G":Z
    .local v0, "size":[I
    .restart local v2    # "is3G":Z
    .local v6, "used":I
    :cond_190
    move/from16 v19, v2

    .line 4845
    .end local v2    # "is3G":Z
    .restart local v19    # "is3G":Z
    :goto_192
    const/16 v2, 0xc4

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 4847
    .local v2, "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    if-eqz v2, :cond_255

    .line 4848
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v3

    .line 4849
    .end local v0    # "size":[I
    .local v3, "size":[I
    if-eqz v3, :cond_1b6

    .line 4850
    aget-object v0, v5, v8

    const/4 v4, 0x0

    aget v14, v3, v4

    invoke-virtual {v0, v14}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setAnrLength(I)V

    .line 4851
    aget-object v0, v5, v8

    const/4 v4, 0x2

    aget v14, v3, v4

    invoke-virtual {v0, v14}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setAnrTotal(I)V

    .line 4853
    :cond_1b6
    aget-object v0, v5, v8

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getParentTag()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setAnrType(I)V

    .line 4854
    const/4 v0, 0x0

    .line 4856
    .end local v6    # "used":I
    .local v0, "used":I
    const/4 v4, 0x0

    .line 4857
    .local v4, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    const/4 v6, 0x0

    .line 4859
    .local v6, "anrStr":Ljava/lang/String;
    move v14, v12

    move v15, v14

    move-object v14, v6

    move v6, v0

    .end local v0    # "used":I
    .local v6, "used":I
    .local v14, "anrStr":Ljava/lang/String;
    .local v15, "i":I
    :goto_1c6
    if-ge v15, v11, :cond_235

    .line 4861
    :try_start_1c8
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_1d0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1c8 .. :try_end_1d0} :catch_1d6

    .line 4866
    .end local v4    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .local v0, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    move-object v4, v0

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    goto :goto_201

    .line 4862
    .end local v0    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v4    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :catch_1d6
    move-exception v0

    .line 4863
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    move-object/from16 v18, v0

    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v18    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v0, "MtkUsimPhoneBookManager"

    move-object/from16 v20, v2

    .end local v2    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .local v20, "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v3

    .end local v3    # "size":[I
    .local v21, "size":[I
    const-string v3, "getPhonebookMemStorageExt: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 4865
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "index is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4863
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4868
    .end local v18    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_201
    if-nez v4, :cond_209

    .line 4869
    const-string v0, "null anr rec "

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4870
    goto :goto_22e

    .line 4873
    :cond_209
    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAdditionalNumber()Ljava/lang/String;

    move-result-object v0

    .line 4875
    .end local v14    # "anrStr":Ljava/lang/String;
    .local v0, "anrStr":Ljava/lang/String;
    if-eqz v0, :cond_22d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_22d

    .line 4876
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "anrStr: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4877
    add-int/lit8 v6, v6, 0x1

    move-object v14, v0

    goto :goto_22e

    .line 4859
    :cond_22d
    move-object v14, v0

    .end local v0    # "anrStr":Ljava/lang/String;
    .restart local v14    # "anrStr":Ljava/lang/String;
    :goto_22e
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    goto :goto_1c6

    .end local v20    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v21    # "size":[I
    .restart local v2    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v3    # "size":[I
    :cond_235
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    .line 4880
    .end local v2    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v3    # "size":[I
    .end local v15    # "i":I
    .restart local v20    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v21    # "size":[I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "anr used: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4881
    aget-object v0, v5, v8

    invoke-virtual {v0, v6}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setAnrUsed(I)V

    move-object/from16 v0, v21

    goto :goto_257

    .line 4847
    .end local v4    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v14    # "anrStr":Ljava/lang/String;
    .end local v20    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v21    # "size":[I
    .local v0, "size":[I
    .restart local v2    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :cond_255
    move-object/from16 v20, v2

    .line 4885
    .end local v2    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v20    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :goto_257
    const/16 v2, 0xca

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 4887
    .local v2, "emailFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    if-eqz v2, :cond_322

    .line 4888
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v3

    .line 4889
    .end local v0    # "size":[I
    .restart local v3    # "size":[I
    if-eqz v3, :cond_27b

    .line 4890
    aget-object v0, v5, v8

    const/4 v4, 0x0

    aget v14, v3, v4

    invoke-virtual {v0, v14}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setEmailLength(I)V

    .line 4891
    aget-object v0, v5, v8

    const/4 v4, 0x2

    aget v14, v3, v4

    invoke-virtual {v0, v14}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setEmailTotal(I)V

    .line 4894
    :cond_27b
    aget-object v0, v5, v8

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getParentTag()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setEmailType(I)V

    .line 4895
    const/4 v0, 0x0

    .line 4896
    .end local v6    # "used":I
    .local v0, "used":I
    const/4 v4, 0x0

    .line 4897
    .restart local v4    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    const/4 v6, 0x0

    .line 4899
    .local v6, "emails":[Ljava/lang/String;
    move v14, v12

    move v15, v14

    move-object v14, v6

    move v6, v0

    .end local v0    # "used":I
    .local v6, "used":I
    .local v14, "emails":[Ljava/lang/String;
    .restart local v15    # "i":I
    :goto_28b
    if-ge v15, v11, :cond_302

    .line 4901
    :try_start_28d
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_295
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_28d .. :try_end_295} :catch_29b

    .line 4906
    .end local v4    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .local v0, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    move-object v4, v0

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    goto :goto_2c6

    .line 4902
    .end local v0    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v4    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :catch_29b
    move-exception v0

    .line 4903
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    move-object/from16 v18, v0

    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v18    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v0, "MtkUsimPhoneBookManager"

    move-object/from16 v21, v2

    .end local v2    # "emailFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .local v21, "emailFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v3

    .end local v3    # "size":[I
    .local v22, "size":[I
    const-string v3, "getPhonebookMemStorageExt: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 4905
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "index is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4903
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4908
    .end local v18    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_2c6
    if-nez v4, :cond_2ce

    .line 4909
    const-string v0, "null email rec "

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4910
    goto :goto_2fb

    .line 4913
    :cond_2ce
    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v0

    .line 4915
    .end local v14    # "emails":[Ljava/lang/String;
    .local v0, "emails":[Ljava/lang/String;
    if-eqz v0, :cond_2fa

    array-length v2, v0

    if-lez v2, :cond_2fa

    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2fa

    .line 4916
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "email: "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v0, v2

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4917
    add-int/lit8 v6, v6, 0x1

    move-object v14, v0

    goto :goto_2fb

    .line 4899
    :cond_2fa
    move-object v14, v0

    .end local v0    # "emails":[Ljava/lang/String;
    .restart local v14    # "emails":[Ljava/lang/String;
    :goto_2fb
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    goto :goto_28b

    .end local v21    # "emailFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v22    # "size":[I
    .restart local v2    # "emailFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v3    # "size":[I
    :cond_302
    move-object/from16 v21, v2

    move-object/from16 v22, v3

    .line 4920
    .end local v2    # "emailFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v3    # "size":[I
    .end local v15    # "i":I
    .restart local v21    # "emailFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v22    # "size":[I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "email used: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4921
    aget-object v0, v5, v8

    invoke-virtual {v0, v6}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setEmailUsed(I)V

    move-object/from16 v0, v22

    goto :goto_324

    .line 4887
    .end local v4    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v14    # "emails":[Ljava/lang/String;
    .end local v21    # "emailFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v22    # "size":[I
    .local v0, "size":[I
    .restart local v2    # "emailFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :cond_322
    move-object/from16 v21, v2

    .line 4925
    .end local v2    # "emailFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v21    # "emailFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :goto_324
    const/16 v2, 0xc2

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 4927
    .local v2, "ext1File":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    if-eqz v2, :cond_3d8

    .line 4928
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v3

    .line 4929
    .end local v0    # "size":[I
    .restart local v3    # "size":[I
    if-eqz v3, :cond_348

    .line 4930
    aget-object v0, v5, v8

    const/4 v4, 0x0

    aget v14, v3, v4

    invoke-virtual {v0, v14}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setExt1Length(I)V

    .line 4931
    aget-object v0, v5, v8

    const/4 v4, 0x2

    aget v14, v3, v4

    invoke-virtual {v0, v14}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setExt1Total(I)V

    .line 4934
    :cond_348
    aget-object v0, v5, v8

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getParentTag()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setExt1Type(I)V

    .line 4935
    iget-object v4, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4936
    :try_start_354
    invoke-direct {v1, v8}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readExt1FileAndWait(I)V

    .line 4937
    monitor-exit v4
    :try_end_358
    .catchall {:try_start_354 .. :try_end_358} :catchall_3cf

    .line 4939
    const/4 v0, 0x0

    .line 4941
    .end local v6    # "used":I
    .local v0, "used":I
    iget-object v4, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mExt1FileList:Ljava/util/ArrayList;

    if-eqz v4, :cond_3c2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v8, v4, :cond_3c2

    .line 4942
    iget-object v4, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mExt1FileList:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 4943
    .local v4, "ext1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v4, :cond_3bd

    .line 4944
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 4945
    .local v6, "len":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_372
    if-ge v14, v6, :cond_3b8

    .line 4946
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    .line 4947
    .local v15, "arr":[B
    move-object/from16 v18, v2

    .end local v2    # "ext1File":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .local v18, "ext1File":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v3

    .end local v3    # "size":[I
    .restart local v22    # "size":[I
    const-string v3, "ext1["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4948
    if-eqz v15, :cond_3b1

    array-length v2, v15

    if-lez v2, :cond_3b1

    .line 4949
    const/4 v2, 0x0

    aget-byte v3, v15, v2

    const/4 v2, 0x1

    if-eq v3, v2, :cond_3af

    const/4 v3, 0x0

    aget-byte v2, v15, v3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3b1

    .line 4950
    :cond_3af
    add-int/lit8 v0, v0, 0x1

    .line 4945
    .end local v15    # "arr":[B
    :cond_3b1
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, v18

    move-object/from16 v3, v22

    goto :goto_372

    .end local v18    # "ext1File":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v22    # "size":[I
    .restart local v2    # "ext1File":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v3    # "size":[I
    :cond_3b8
    move-object/from16 v18, v2

    move-object/from16 v22, v3

    .end local v2    # "ext1File":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v3    # "size":[I
    .restart local v18    # "ext1File":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v22    # "size":[I
    goto :goto_3c6

    .line 4943
    .end local v6    # "len":I
    .end local v14    # "i":I
    .end local v18    # "ext1File":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v22    # "size":[I
    .restart local v2    # "ext1File":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v3    # "size":[I
    :cond_3bd
    move-object/from16 v18, v2

    move-object/from16 v22, v3

    .end local v2    # "ext1File":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v3    # "size":[I
    .restart local v18    # "ext1File":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v22    # "size":[I
    goto :goto_3c6

    .line 4941
    .end local v4    # "ext1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v18    # "ext1File":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v22    # "size":[I
    .restart local v2    # "ext1File":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v3    # "size":[I
    :cond_3c2
    move-object/from16 v18, v2

    move-object/from16 v22, v3

    .line 4956
    .end local v2    # "ext1File":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v3    # "size":[I
    .restart local v18    # "ext1File":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v22    # "size":[I
    :goto_3c6
    aget-object v2, v5, v8

    invoke-virtual {v2, v0}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setExt1Used(I)V

    move v6, v0

    move-object/from16 v0, v22

    goto :goto_3da

    .line 4937
    .end local v0    # "used":I
    .end local v18    # "ext1File":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v22    # "size":[I
    .restart local v2    # "ext1File":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v3    # "size":[I
    .local v6, "used":I
    :catchall_3cf
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v22, v3

    .end local v2    # "ext1File":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v3    # "size":[I
    .restart local v18    # "ext1File":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v22    # "size":[I
    :goto_3d4
    :try_start_3d4
    monitor-exit v4
    :try_end_3d5
    .catchall {:try_start_3d4 .. :try_end_3d5} :catchall_3d6

    throw v0

    :catchall_3d6
    move-exception v0

    goto :goto_3d4

    .line 4927
    .end local v18    # "ext1File":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v22    # "size":[I
    .local v0, "size":[I
    .restart local v2    # "ext1File":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :cond_3d8
    move-object/from16 v18, v2

    .line 4960
    .end local v2    # "ext1File":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v18    # "ext1File":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :goto_3da
    const/16 v2, 0xc8

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 4961
    .local v2, "gasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    if-eqz v2, :cond_407

    .line 4962
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v0

    .line 4963
    if-eqz v0, :cond_3fe

    .line 4964
    aget-object v3, v5, v8

    const/4 v4, 0x0

    aget v14, v0, v4

    invoke-virtual {v3, v14}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setGasLength(I)V

    .line 4965
    aget-object v3, v5, v8

    const/4 v4, 0x2

    aget v14, v0, v4

    invoke-virtual {v3, v14}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setGasTotal(I)V

    .line 4967
    :cond_3fe
    aget-object v3, v5, v8

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getParentTag()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setGasType(I)V

    .line 4971
    :cond_407
    const/16 v3, 0xc7

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 4972
    .local v3, "aasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    if-eqz v3, :cond_434

    .line 4973
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v0

    .line 4974
    if-eqz v0, :cond_42b

    .line 4975
    aget-object v4, v5, v8

    const/4 v14, 0x0

    aget v15, v0, v14

    invoke-virtual {v4, v15}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setAasLength(I)V

    .line 4976
    aget-object v4, v5, v8

    const/4 v14, 0x2

    aget v14, v0, v14

    invoke-virtual {v4, v14}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setAasTotal(I)V

    .line 4978
    :cond_42b
    aget-object v4, v5, v8

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getParentTag()I

    move-result v14

    invoke-virtual {v4, v14}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setAasType(I)V

    .line 4982
    :cond_434
    const/16 v4, 0xc3

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 4983
    .local v4, "sneFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    if-eqz v4, :cond_466

    .line 4984
    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v14

    invoke-virtual {v1, v14}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v0

    .line 4985
    if-eqz v0, :cond_45a

    .line 4986
    aget-object v14, v5, v8

    move-object/from16 v16, v2

    const/4 v15, 0x0

    .end local v2    # "gasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .local v16, "gasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    aget v2, v0, v15

    invoke-virtual {v14, v2}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setSneLength(I)V

    .line 4987
    aget-object v2, v5, v8

    aget v14, v0, v15

    invoke-virtual {v2, v14}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setSneTotal(I)V

    goto :goto_45c

    .line 4985
    .end local v16    # "gasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v2    # "gasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :cond_45a
    move-object/from16 v16, v2

    .line 4989
    .end local v2    # "gasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v16    # "gasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :goto_45c
    aget-object v2, v5, v8

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getParentTag()I

    move-result v14

    invoke-virtual {v2, v14}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setSneType(I)V

    goto :goto_468

    .line 4983
    .end local v16    # "gasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v2    # "gasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :cond_466
    move-object/from16 v16, v2

    .line 4993
    .end local v2    # "gasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v16    # "gasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :goto_468
    const/16 v2, 0xcb

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 4994
    .local v2, "ccpFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    if-eqz v2, :cond_49b

    .line 4995
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v14

    invoke-virtual {v1, v14}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v0

    .line 4996
    if-eqz v0, :cond_48e

    .line 4997
    aget-object v14, v5, v8

    move-object/from16 v17, v3

    const/4 v15, 0x0

    .end local v3    # "aasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .local v17, "aasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    aget v3, v0, v15

    invoke-virtual {v14, v3}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setCcpLength(I)V

    .line 4998
    aget-object v3, v5, v8

    aget v14, v0, v15

    invoke-virtual {v3, v14}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setCcpTotal(I)V

    goto :goto_491

    .line 4996
    .end local v17    # "aasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v3    # "aasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :cond_48e
    move-object/from16 v17, v3

    const/4 v15, 0x0

    .line 5000
    .end local v3    # "aasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v17    # "aasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :goto_491
    aget-object v3, v5, v8

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getParentTag()I

    move-result v14

    invoke-virtual {v3, v14}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setCcpType(I)V

    goto :goto_49e

    .line 4994
    .end local v17    # "aasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v3    # "aasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :cond_49b
    move-object/from16 v17, v3

    const/4 v15, 0x0

    .line 4796
    .end local v2    # "ccpFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v3    # "aasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v4    # "sneFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v9    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v10    # "numAdnRecs":I
    .end local v11    # "nMax":I
    .end local v12    # "nOffset":I
    .end local v13    # "adnFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v16    # "gasFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v18    # "ext1File":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v20    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v21    # "emailFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :goto_49e
    add-int/lit8 v8, v8, 0x1

    move v4, v15

    move/from16 v2, v19

    goto/16 :goto_90

    .end local v19    # "is3G":Z
    .local v2, "is3G":Z
    :cond_4a5
    move/from16 v19, v2

    .line 5004
    .end local v2    # "is3G":Z
    .end local v8    # "pbrIndex":I
    .restart local v19    # "is3G":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4a8
    iget-object v3, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4d1

    .line 5005
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPhonebookMemStorageExt["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v5, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 5004
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a8

    .line 5008
    .end local v2    # "i":I
    :cond_4d1
    return-object v5

    .line 4776
    .end local v0    # "size":[I
    .end local v5    # "response":[Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;
    .end local v6    # "used":I
    .end local v7    # "currentTotal":I
    .end local v19    # "is3G":Z
    .local v2, "is3G":Z
    :cond_4d2
    move/from16 v19, v2

    .line 4777
    .end local v2    # "is3G":Z
    .restart local v19    # "is3G":Z
    :goto_4d4
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhonebookMemStorageExt2G()[Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;
    .registers 13

    .line 5012
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;

    .line 5013
    .local v1, "response":[Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;
    new-instance v2, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 5014
    const/4 v2, 0x0

    .line 5015
    .local v2, "size":[I
    const/16 v4, 0x6f3a

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v2

    .line 5017
    const/4 v4, 0x2

    if-eqz v2, :cond_2f

    .line 5018
    aget-object v5, v1, v3

    aget v6, v2, v3

    invoke-virtual {v5, v6}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setAdnLength(I)V

    .line 5019
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->isAdnAccessible()Z

    move-result v5

    if-ne v5, v0, :cond_2a

    .line 5020
    aget-object v5, v1, v3

    aget v6, v2, v4

    invoke-virtual {v5, v6}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setAdnTotal(I)V

    goto :goto_2f

    .line 5022
    :cond_2a
    aget-object v5, v1, v3

    invoke-virtual {v5, v3}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setAdnTotal(I)V

    .line 5026
    :cond_2f
    :goto_2f
    aget-object v5, v1, v3

    const/16 v6, 0xa8

    invoke-virtual {v5, v6}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setAdnType(I)V

    .line 5027
    aget-object v5, v1, v3

    invoke-virtual {v5, v0}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setSliceIndex(I)V

    .line 5028
    const/16 v5, 0x6f4a

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v2

    .line 5030
    if-eqz v2, :cond_51

    .line 5031
    aget-object v6, v1, v3

    aget v7, v2, v3

    invoke-virtual {v6, v7}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setExt1Length(I)V

    .line 5032
    aget-object v6, v1, v3

    aget v7, v2, v4

    invoke-virtual {v6, v7}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setExt1Total(I)V

    .line 5035
    :cond_51
    aget-object v6, v1, v3

    const/16 v7, 0xaa

    invoke-virtual {v6, v7}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setExt1Type(I)V

    .line 5037
    iget-object v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 5038
    :try_start_5b
    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v7, :cond_ec

    .line 5039
    const/16 v7, 0x3e9

    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 5040
    .local v7, "msg":Landroid/os/Message;
    iput v3, v7, Landroid/os/Message;->arg1:I

    .line 5041
    iget-object v8, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v8, v5, v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V
    :try_end_6c
    .catchall {:try_start_5b .. :try_end_6c} :catchall_f5

    .line 5043
    :try_start_6c
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_71
    .catch Ljava/lang/InterruptedException; {:try_start_6c .. :try_end_71} :catch_72
    .catchall {:try_start_6c .. :try_end_71} :catchall_f5

    .line 5046
    goto :goto_7a

    .line 5044
    :catch_72
    move-exception v5

    .line 5045
    .local v5, "e":Ljava/lang/InterruptedException;
    :try_start_73
    const-string v8, "MtkUsimPhoneBookManager"

    const-string v9, "Interrupted Exception in readExt1FileAndWait"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5047
    .end local v5    # "e":Ljava/lang/InterruptedException;
    .end local v7    # "msg":Landroid/os/Message;
    :goto_7a
    nop

    .line 5051
    monitor-exit v6
    :try_end_7c
    .catchall {:try_start_73 .. :try_end_7c} :catchall_f5

    .line 5053
    const/4 v5, 0x0

    .line 5055
    .local v5, "used":I
    iget-object v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mExt1FileList:Ljava/util/ArrayList;

    if-eqz v6, :cond_d0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_d0

    .line 5056
    iget-object v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mExt1FileList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 5058
    .local v6, "ext1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v6, :cond_d0

    .line 5059
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 5061
    .local v7, "len":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_96
    if-ge v8, v7, :cond_d0

    .line 5062
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    .line 5063
    .local v9, "arr":[B
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ext1["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "]="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 5064
    if-eqz v9, :cond_cd

    array-length v10, v9

    if-lez v10, :cond_cd

    .line 5065
    aget-byte v10, v9, v3

    if-eq v10, v0, :cond_cb

    aget-byte v10, v9, v3

    if-ne v10, v4, :cond_cd

    .line 5066
    :cond_cb
    add-int/lit8 v5, v5, 0x1

    .line 5061
    .end local v9    # "arr":[B
    :cond_cd
    add-int/lit8 v8, v8, 0x1

    goto :goto_96

    .line 5073
    .end local v6    # "ext1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v7    # "len":I
    .end local v8    # "i":I
    :cond_d0
    aget-object v0, v1, v3

    invoke-virtual {v0, v5}, Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;->setExt1Used(I)V

    .line 5074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPhonebookMemStorageExt2G:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v1, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 5075
    return-object v1

    .line 5048
    .end local v5    # "used":I
    :cond_ec
    :try_start_ec
    const-string v0, "MtkUsimPhoneBookManager"

    const-string v3, "readExt1FileAndWait-IccFileHandler is null"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5049
    monitor-exit v6

    return-object v1

    .line 5051
    :catchall_f5
    move-exception v0

    monitor-exit v6
    :try_end_f7
    .catchall {:try_start_ec .. :try_end_f7} :catchall_f5

    throw v0
.end method

.method public getSneRecordLen()I
    .registers 9

    .line 4524
    const/4 v0, 0x0

    .line 4526
    .local v0, "resultSize":I
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->hasSne()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_9

    .line 4527
    return v2

    .line 4530
    :cond_9
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v3, -0x1

    if-eqz v1, :cond_7f

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_7f

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1d

    goto :goto_7f

    .line 4534
    :cond_1d
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    # getter for: Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v1

    .line 4535
    .local v1, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    if-nez v1, :cond_2c

    .line 4536
    return v3

    .line 4539
    :cond_2c
    const/16 v3, 0xc3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 4540
    .local v3, "sneFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    if-nez v3, :cond_37

    .line 4541
    return v2

    .line 4544
    :cond_37
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v4

    .line 4545
    .local v4, "efid":I
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getParentTag()I

    move-result v5

    const/16 v6, 0xa9

    if-ne v5, v6, :cond_45

    const/4 v5, 0x1

    goto :goto_46

    :cond_45
    move v5, v2

    .line 4546
    .local v5, "sneType2":Z
    :goto_46
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSneRecordLen: EFSNE id is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4547
    const/4 v6, 0x0

    .line 4549
    .local v6, "size":[I
    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRecordSize:Landroid/util/SparseArray;

    if-eqz v7, :cond_6f

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_6f

    .line 4550
    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRecordSize:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    check-cast v6, [I

    goto :goto_73

    .line 4552
    :cond_6f
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v6

    .line 4555
    :goto_73
    if-eqz v6, :cond_7e

    .line 4556
    if-eqz v5, :cond_7c

    .line 4557
    aget v2, v6, v2

    add-int/lit8 v0, v2, -0x2

    goto :goto_7e

    .line 4559
    :cond_7c
    aget v0, v6, v2

    .line 4563
    :cond_7e
    :goto_7e
    return v0

    .line 4531
    .end local v1    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v3    # "sneFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v4    # "efid":I
    .end local v5    # "sneType2":Z
    .end local v6    # "size":[I
    :cond_7f
    :goto_7f
    return v3
.end method

.method public getUpbDone()I
    .registers 2

    .line 4567
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbDone:I

    return v0
.end method

.method public getUsimAasById(II)Ljava/lang/String;
    .registers 8
    .param p1, "index"    # I
    .param p2, "pbrIndex"    # I

    .line 4171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUsimAasById by id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",pbrIndex "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mPbrNeedNotify "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrNeedNotify:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4174
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->loadAasFiles()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2e

    return-object v2

    .line 4176
    :cond_2e
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasForAnr:Ljava/util/ArrayList;

    .line 4178
    .local v0, "map":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_55

    .line 4179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUsimAasById NonNULL by id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4180
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 4183
    :cond_55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUsimAasById NULL by id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4184
    return-object v2
.end method

.method public getUsimAasList()Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/internal/telephony/phb/AlphaTag;",
            ">;"
        }
    .end annotation

    .line 4151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUsimAasList start mPbrNeedNotify:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrNeedNotify:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4154
    .local v0, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/phb/AlphaTag;>;"
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->loadAasFiles()Z

    move-result v1

    if-nez v1, :cond_22

    return-object v0

    .line 4156
    :cond_22
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasForAnr:Ljava/util/ArrayList;

    .line 4157
    .local v1, "allAas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_27

    return-object v0

    .line 4159
    :cond_27
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_28
    const/4 v3, 0x1

    if-ge v2, v3, :cond_6e

    .line 4160
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6b

    .line 4161
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4162
    .local v4, "value":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "aasIndex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",pbrIndex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4163
    new-instance v5, Lcom/mediatek/internal/telephony/phb/AlphaTag;

    add-int/lit8 v6, v3, 0x1

    invoke-direct {v5, v6, v4, v2}, Lcom/mediatek/internal/telephony/phb/AlphaTag;-><init>(ILjava/lang/String;I)V

    .line 4164
    .local v5, "tag":Lcom/mediatek/internal/telephony/phb/AlphaTag;
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4160
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "tag":Lcom/mediatek/internal/telephony/phb/AlphaTag;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 4159
    .end local v3    # "j":I
    :cond_6b
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 4167
    .end local v2    # "i":I
    :cond_6e
    return-object v0
.end method

.method public getUsimAasMaxCount()I
    .registers 6

    .line 4422
    const-string v0, "getUsimAasMaxCount begin"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4424
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4425
    :try_start_8
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    if-gez v1, :cond_2e

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->checkIsPhbReady()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 4426
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0x13

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->queryUPBCapability(Landroid/os/Message;)V
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_4c

    .line 4428
    :try_start_20
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_25} :catch_26
    .catchall {:try_start_20 .. :try_end_25} :catchall_4c

    .line 4431
    goto :goto_2e

    .line 4429
    :catch_26
    move-exception v1

    .line 4430
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_27
    const-string v3, "MtkUsimPhoneBookManager"

    const-string v4, "Interrupted Exception in getUsimAasMaxCount"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4433
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_2e
    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_4c

    .line 4435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUsimAasMaxCount done: N_AAS is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4437
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    aget v0, v0, v2

    return v0

    .line 4433
    :catchall_4c
    move-exception v1

    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method public getUsimAasMaxNameLen()I
    .registers 6

    .line 4403
    const-string v0, "getUsimAasMaxNameLen begin"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4405
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4406
    :try_start_8
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    if-gez v1, :cond_2e

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->checkIsPhbReady()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 4407
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0x13

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->queryUPBCapability(Landroid/os/Message;)V
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_4c

    .line 4409
    :try_start_20
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_25} :catch_26
    .catchall {:try_start_20 .. :try_end_25} :catchall_4c

    .line 4412
    goto :goto_2e

    .line 4410
    :catch_26
    move-exception v1

    .line 4411
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_27
    const-string v3, "MtkUsimPhoneBookManager"

    const-string v4, "Interrupted Exception in getUsimAasMaxNameLen"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4414
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_2e
    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_4c

    .line 4416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUsimAasMaxNameLen done: L_AAS is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4418
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    aget v0, v0, v2

    return v0

    .line 4414
    :catchall_4c
    move-exception v1

    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method public getUsimGroupById(I)Ljava/lang/String;
    .registers 6
    .param p1, "nGasId"    # I

    .line 2042
    const/4 v0, 0x0

    .line 2044
    .local v0, "grpName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUsimGroupById nGasId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2046
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    if-eqz v1, :cond_4f

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt p1, v1, :cond_4f

    .line 2047
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/phb/UsimGroup;

    .line 2048
    .local v1, "uGas":Lcom/mediatek/internal/telephony/phb/UsimGroup;
    if-eqz v1, :cond_4f

    .line 2049
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/phb/UsimGroup;->getAlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 2050
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUsimGroupById index is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/phb/UsimGroup;->getRecordIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", name is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2055
    .end local v1    # "uGas":Lcom/mediatek/internal/telephony/phb/UsimGroup;
    :cond_4f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUsimGroupById grpName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2056
    return-object v0
.end method

.method public getUsimGroups()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/internal/telephony/phb/UsimGroup;",
            ">;"
        }
    .end annotation

    .line 2027
    const-string v0, "getUsimGroups begin"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2029
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2030
    :try_start_8
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    .line 2031
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    monitor-exit v0

    return-object v1

    .line 2033
    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_23

    .line 2035
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->queryUpbCapablityAndWait()V

    .line 2036
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readGasListAndWait()V

    .line 2037
    const-string v0, "getUsimGroups end"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2038
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    return-object v0

    .line 2033
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public getUsimGrpMaxCount()I
    .registers 5

    .line 2663
    const/4 v0, -0x1

    .line 2665
    .local v0, "ret":I
    const-string v1, "getUsimGrpMaxCount begin"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2667
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2668
    :try_start_9
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->checkIsPhbReady()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 2669
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    const/4 v3, 0x5

    aget v2, v2, v3

    if-gez v2, :cond_19

    .line 2670
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->queryUpbCapablityAndWait()V

    .line 2672
    :cond_19
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    aget v2, v2, v3

    move v0, v2

    goto :goto_20

    .line 2674
    :cond_1f
    const/4 v0, -0x1

    .line 2676
    :goto_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUsimGrpMaxCount done: N_Gas is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2677
    monitor-exit v1

    .line 2678
    return v0

    .line 2677
    :catchall_36
    move-exception v2

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_9 .. :try_end_38} :catchall_36

    throw v2
.end method

.method public getUsimGrpMaxNameLen()I
    .registers 5

    .line 2643
    const/4 v0, -0x1

    .line 2645
    .local v0, "ret":I
    const-string v1, "getUsimGrpMaxNameLen begin"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2647
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2648
    :try_start_9
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->checkIsPhbReady()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 2649
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    const/4 v3, 0x6

    aget v2, v2, v3

    if-gez v2, :cond_19

    .line 2650
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->queryUpbCapablityAndWait()V

    .line 2652
    :cond_19
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    aget v2, v2, v3

    move v0, v2

    goto :goto_20

    .line 2654
    :cond_1f
    const/4 v0, -0x1

    .line 2656
    :goto_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUsimGrpMaxNameLen done: L_Gas is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2657
    monitor-exit v1

    .line 2658
    return v0

    .line 2657
    :catchall_36
    move-exception v2

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_9 .. :try_end_38} :catchall_36

    throw v2
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .param p1, "msg"    # Landroid/os/Message;

    .line 1135
    const/4 v0, 0x0

    .line 1137
    .local v0, "userData":[I
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch v1, :sswitch_data_b6a

    .line 1815
    const-string v1, "MtkUsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnRecognized Message : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b68

    .line 1529
    :sswitch_25
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1530
    .local v1, "ar":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1532
    .local v2, "pbrIndexExt1":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_EXT1_LOAD_DONE done pbr "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1534
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_71

    .line 1535
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    .line 1537
    .local v3, "record":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v3, :cond_71

    .line 1538
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_EXT1_LOAD_DONE done size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1539
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mExt1FileList:Ljava/util/ArrayList;

    if-nez v4, :cond_6c

    .line 1540
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mExt1FileList:Ljava/util/ArrayList;

    .line 1542
    :cond_6c
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mExt1FileList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1546
    .end local v3    # "record":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_71
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1547
    :try_start_74
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 1548
    monitor-exit v4

    .line 1549
    goto/16 :goto_b68

    .line 1548
    :catchall_7c
    move-exception v3

    monitor-exit v4
    :try_end_7e
    .catchall {:try_start_74 .. :try_end_7e} :catchall_7c

    throw v3

    .line 1503
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "pbrIndexExt1":I
    :sswitch_7f
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1504
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1506
    .local v2, "efid":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_GET_RECORDS_SIZE_DONE done, recNum:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadEFLinerRecordSizeNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", ef_id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1509
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_d8

    .line 1510
    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    .line 1511
    .local v4, "recordSize":[I
    array-length v5, v4

    if-ne v5, v3, :cond_bf

    .line 1512
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRecordSize:Landroid/util/SparseArray;

    if-nez v3, :cond_b9

    .line 1513
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRecordSize:Landroid/util/SparseArray;

    .line 1515
    :cond_b9
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRecordSize:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_d7

    .line 1517
    :cond_bf
    const-string v3, "MtkUsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get wrong record size format"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    .end local v4    # "recordSize":[I
    :goto_d7
    goto :goto_f0

    .line 1520
    :cond_d8
    const-string v3, "MtkUsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get EF record size failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    :goto_f0
    iget v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadEFLinerRecordSizeNum:I

    if-lez v3, :cond_b68

    .line 1523
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1524
    :try_start_f7
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1525
    monitor-exit v3

    goto/16 :goto_b68

    :catchall_ff
    move-exception v4

    monitor-exit v3
    :try_end_101
    .catchall {:try_start_f7 .. :try_end_101} :catchall_ff

    throw v4

    .line 1794
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "efid":I
    :sswitch_102
    const-string v1, "Load UPB AAS done"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1796
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1798
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_14d

    .line 1799
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    .line 1800
    .local v2, "aasList":[Ljava/lang/String;
    if-eqz v2, :cond_14d

    array-length v3, v2

    if-lez v3, :cond_14d

    .line 1801
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasForAnr:Ljava/util/ArrayList;

    .line 1802
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_120
    array-length v4, v2

    if-ge v3, v4, :cond_14d

    .line 1803
    aget-object v4, v2, v3

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->decodeGas(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1804
    .local v4, "aas":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasForAnr:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1805
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Load UPB AAS done i is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", aas is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1802
    .end local v4    # "aas":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_120

    .line 1810
    .end local v2    # "aasList":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_14d
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1811
    :try_start_150
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 1812
    monitor-exit v2

    .line 1813
    goto/16 :goto_b68

    .line 1812
    :catchall_158
    move-exception v3

    monitor-exit v2
    :try_end_15a
    .catchall {:try_start_150 .. :try_end_15a} :catchall_158

    throw v3

    .line 1724
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_15b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1726
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1a1

    .line 1727
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    iput-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSneInfo:[I

    .line 1728
    if-nez v2, :cond_171

    .line 1729
    const-string v2, "mSneInfo Null!"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_1a1

    .line 1731
    :cond_171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSneInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSneInfo:[I

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSneInfo:[I

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSneInfo:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1736
    :cond_1a1
    :goto_1a1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1737
    :try_start_1a4
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 1738
    monitor-exit v2

    .line 1739
    goto/16 :goto_b68

    .line 1738
    :catchall_1ac
    move-exception v3

    monitor-exit v2
    :try_end_1ae
    .catchall {:try_start_1a4 .. :try_end_1ae} :catchall_1ac

    throw v3

    .line 1701
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_1af
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1702
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    .line 1704
    .local v2, "tmpAnrInfo":[I
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_209

    .line 1705
    if-nez v2, :cond_1c3

    .line 1706
    const-string v3, "tmpAnrInfo Null!"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_209

    .line 1708
    :cond_1c3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tmpAnrInfo = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v2, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v2, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1710
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrInfo:Ljava/util/ArrayList;

    if-nez v3, :cond_1f9

    .line 1711
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrInfo:Ljava/util/ArrayList;

    goto :goto_204

    .line 1712
    :cond_1f9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_204

    .line 1713
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1715
    :cond_204
    :goto_204
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1719
    :cond_209
    :goto_209
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1720
    :try_start_20c
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1721
    monitor-exit v3

    .line 1722
    goto/16 :goto_b68

    .line 1721
    :catchall_214
    move-exception v4

    monitor-exit v3
    :try_end_216
    .catchall {:try_start_20c .. :try_end_216} :catchall_214

    throw v4

    .line 1685
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "tmpAnrInfo":[I
    :sswitch_217
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1686
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_25d

    .line 1687
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    iput-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailInfo:[I

    .line 1688
    if-nez v2, :cond_22d

    .line 1689
    const-string v2, "mEmailInfo Null!"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_25d

    .line 1691
    :cond_22d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEmailInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailInfo:[I

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailInfo:[I

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailInfo:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1696
    :cond_25d
    :goto_25d
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1697
    :try_start_260
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 1698
    monitor-exit v2

    .line 1699
    goto/16 :goto_b68

    .line 1698
    :catchall_268
    move-exception v3

    monitor-exit v2
    :try_end_26a
    .catchall {:try_start_260 .. :try_end_26a} :catchall_268

    throw v3

    .line 1741
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_26b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1742
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [I

    .line 1743
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1745
    .local v2, "sneResult":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    .line 1746
    .local v3, "isNotify":Z
    if-eqz v2, :cond_2a1

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2a1

    .line 1747
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->decodeGas(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1748
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loading USIM Sne record done result is "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1749
    aget v4, v0, v5

    invoke-direct {p0, v4, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updatePhoneAdnRecordWithSneByIndexOptmz(ILjava/lang/String;)V

    .line 1752
    :cond_2a1
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1753
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "haman, mReadingSneNum when load done after minus: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1754
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mNeedNotify:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", sne index:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v0, v6

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", adn i:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1753
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1757
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-nez v4, :cond_b68

    .line 1758
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_304

    .line 1759
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1760
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1761
    :try_start_2fa
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    .line 1762
    monitor-exit v4

    goto :goto_304

    :catchall_301
    move-exception v5

    monitor-exit v4
    :try_end_303
    .catchall {:try_start_2fa .. :try_end_303} :catchall_301

    throw v5

    .line 1764
    :cond_304
    :goto_304
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_SNE_RECORD_LOAD_OPTMZ_DONE end mLock.notify:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    goto/16 :goto_b68

    .line 1768
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "sneResult":Ljava/lang/String;
    .end local v3    # "isNotify":Z
    :sswitch_31a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1769
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [I

    .line 1770
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Lcom/mediatek/internal/telephony/phb/PhbEntry;

    .line 1771
    .local v2, "anrResult":[Lcom/mediatek/internal/telephony/phb/PhbEntry;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    .line 1773
    .restart local v3    # "isNotify":Z
    if-eqz v2, :cond_354

    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_354

    .line 1774
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Loading USIM Anr record done result is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v2, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1775
    aget v7, v0, v6

    aget v8, v0, v5

    aget v9, v0, v4

    aget-object v10, v2, v6

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updatePhoneAdnRecordWithAnrByIndexOptmz(IIILcom/mediatek/internal/telephony/phb/PhbEntry;)V

    .line 1779
    :cond_354
    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1780
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "haman, mReadingAnrNum when load done after minus: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1781
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", mNeedNotify:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", anr index:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", adn i:"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v5

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1780
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1783
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-nez v4, :cond_b68

    .line 1784
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_3b7

    .line 1785
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1786
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1787
    :try_start_3ad
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    .line 1788
    monitor-exit v4

    goto :goto_3b7

    :catchall_3b4
    move-exception v5

    monitor-exit v4
    :try_end_3b6
    .catchall {:try_start_3ad .. :try_end_3b6} :catchall_3b4

    throw v5

    .line 1790
    :cond_3b7
    :goto_3b7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_ANR_RECORD_LOAD_OPTMZ_DONE end mLock.notify:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    goto/16 :goto_b68

    .line 1658
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "anrResult":[Lcom/mediatek/internal/telephony/phb/PhbEntry;
    .end local v3    # "isNotify":Z
    :sswitch_3cd
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1659
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [I

    .line 1660
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1661
    .local v2, "emailResult":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    .line 1663
    .restart local v3    # "isNotify":Z
    if-eqz v2, :cond_401

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_401

    .line 1664
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loading USIM Email record done result is "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1665
    aget v4, v0, v6

    aget v7, v0, v5

    invoke-direct {p0, v4, v7, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updatePhoneAdnRecordWithEmailByIndexOptmz(IILjava/lang/String;)V

    .line 1669
    :cond_401
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1670
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "haman, mReadingEmailNum when load done after minus: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1671
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mNeedNotify:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", email index:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v0, v6

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", adn i:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1670
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1674
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-nez v4, :cond_b68

    .line 1675
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_464

    .line 1676
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1677
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1678
    :try_start_45a
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    .line 1679
    monitor-exit v4

    goto :goto_464

    :catchall_461
    move-exception v5

    monitor-exit v4
    :try_end_463
    .catchall {:try_start_45a .. :try_end_463} :catchall_461

    throw v5

    .line 1681
    :cond_464
    :goto_464
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_EMAIL_RECORD_LOAD_OPTMZ_DONE end mLock.notify:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    goto/16 :goto_b68

    .line 1139
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "emailResult":Ljava/lang/String;
    .end local v3    # "isNotify":Z
    :sswitch_47a
    const-string v1, "EVENT_QUERY_PHB_ADN_INFO"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1141
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1143
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_4ee

    .line 1144
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    .line 1145
    .local v2, "info":[I
    const/4 v7, 0x4

    if-eqz v2, :cond_4e2

    array-length v8, v2

    if-ne v8, v7, :cond_4e2

    .line 1146
    new-array v7, v7, [I

    iput-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnRecordSize:[I

    .line 1147
    aget v8, v2, v6

    aput v8, v7, v6

    .line 1148
    aget v8, v2, v5

    aput v8, v7, v5

    .line 1149
    aget v8, v2, v4

    aput v8, v7, v4

    .line 1150
    aget v8, v2, v3

    aput v8, v7, v3

    .line 1151
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "recordSize[0]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnRecordSize:[I

    aget v6, v8, v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",recordSize[1]="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnRecordSize:[I

    aget v5, v6, v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",recordSize[2]="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnRecordSize:[I

    aget v4, v5, v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",recordSize[3]="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnRecordSize:[I

    aget v3, v4, v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_4ee

    .line 1156
    :cond_4e2
    new-array v7, v7, [I

    iput-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnRecordSize:[I

    .line 1157
    aput v6, v7, v6

    .line 1158
    aput v6, v7, v5

    .line 1159
    aput v6, v7, v4

    .line 1160
    aput v6, v7, v3

    .line 1164
    .end local v2    # "info":[I
    :cond_4ee
    :goto_4ee
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1165
    :try_start_4f1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 1166
    monitor-exit v2

    .line 1167
    goto/16 :goto_b68

    .line 1166
    :catchall_4f9
    move-exception v3

    monitor-exit v2
    :try_end_4fb
    .catchall {:try_start_4f1 .. :try_end_4fb} :catchall_4f9

    throw v3

    .line 1645
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_4fc
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1647
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_50b

    .line 1648
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/mediatek/internal/telephony/uicc/EFResponseData;

    iput-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEfData:Lcom/mediatek/internal/telephony/uicc/EFResponseData;

    goto :goto_523

    .line 1650
    :cond_50b
    const-string v2, "MtkUsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Select EF file fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    :goto_523
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1654
    :try_start_526
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 1655
    monitor-exit v2

    .line 1656
    goto/16 :goto_b68

    .line 1655
    :catchall_52e
    move-exception v3

    monitor-exit v2
    :try_end_530
    .catchall {:try_start_526 .. :try_end_530} :catchall_52e

    throw v3

    .line 1387
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_531
    const-string v1, "Query UPB capability done"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1389
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1391
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_544

    .line 1392
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    iput-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    .line 1395
    :cond_544
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1396
    :try_start_547
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 1397
    monitor-exit v2

    .line 1398
    goto/16 :goto_b68

    .line 1397
    :catchall_54f
    move-exception v3

    monitor-exit v2
    :try_end_551
    .catchall {:try_start_547 .. :try_end_551} :catchall_54f

    throw v3

    .line 1551
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_552
    const-string v1, "Loading USIM SNE record done"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1552
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1553
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [I

    .line 1554
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1556
    .local v2, "r":Lcom/android/internal/telephony/uicc/IccIoResult;
    if-eqz v2, :cond_58f

    .line 1557
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v3

    .line 1559
    .local v3, "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-nez v3, :cond_58f

    .line 1560
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loading USIM SNE record done result is "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    .line 1561
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1560
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1562
    aget v4, v0, v6

    aget v5, v0, v5

    iget-object v7, v2, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-direct {p0, v4, v5, v7}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updatePhoneAdnRecordWithSneByIndex(II[B)V

    .line 1566
    .end local v3    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    :cond_58f
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1567
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "haman, mReadingSneNum when load done after minus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",mNeedNotify:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1568
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1567
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1569
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-nez v3, :cond_b68

    .line 1570
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_5de

    .line 1571
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1572
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1573
    :try_start_5d4
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1574
    monitor-exit v3

    goto :goto_5de

    :catchall_5db
    move-exception v4

    monitor-exit v3
    :try_end_5dd
    .catchall {:try_start_5d4 .. :try_end_5dd} :catchall_5db

    throw v4

    .line 1576
    :cond_5de
    :goto_5de
    const-string v3, "EVENT_SNE_RECORD_LOAD_DONE end mLock.notify"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    goto/16 :goto_b68

    .line 1360
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "r":Lcom/android/internal/telephony/uicc/IccIoResult;
    :sswitch_5e5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1361
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [I

    .line 1362
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    .line 1364
    .local v2, "isNotify":Z
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_606

    .line 1365
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    .line 1367
    .local v3, "grpIds":[I
    array-length v4, v3

    if-lez v4, :cond_606

    .line 1368
    aget v4, v0, v6

    aget v5, v0, v5

    invoke-direct {p0, v4, v5, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updatePhoneAdnRecordWithGrpByIndex(II[I)V

    .line 1372
    .end local v3    # "grpIds":[I
    :cond_606
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1373
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "haman, mReadingGrpNum when load done after minus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1374
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",mNeedNotify:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1373
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1376
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-nez v3, :cond_b68

    .line 1377
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_64f

    .line 1378
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1379
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1380
    :try_start_645
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1381
    monitor-exit v3

    goto :goto_64f

    :catchall_64c
    move-exception v4

    monitor-exit v3
    :try_end_64e
    .catchall {:try_start_645 .. :try_end_64e} :catchall_64c

    throw v4

    .line 1383
    :cond_64f
    :goto_64f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_GRP_RECORD_LOAD_DONE end mLock.notify:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    goto/16 :goto_b68

    .line 1227
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "isNotify":Z
    :sswitch_665
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1228
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [I

    .line 1229
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1231
    .local v2, "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    if-eqz v2, :cond_685

    .line 1232
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v3

    .line 1234
    .local v3, "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-nez v3, :cond_685

    .line 1235
    aget v7, v0, v6

    aget v5, v0, v5

    aget v4, v0, v4

    iget-object v8, v2, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-direct {p0, v7, v5, v4, v8}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updatePhoneAdnRecordWithAnrByIndex(III[B)V

    .line 1240
    .end local v3    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    :cond_685
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1241
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "haman, mReadingAnrNum when load done after minus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mNeedNotify:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1242
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1241
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1243
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-nez v3, :cond_b68

    .line 1244
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_6d4

    .line 1245
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1246
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1247
    :try_start_6ca
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1248
    monitor-exit v3

    goto :goto_6d4

    :catchall_6d1
    move-exception v4

    monitor-exit v3
    :try_end_6d3
    .catchall {:try_start_6ca .. :try_end_6d3} :catchall_6d1

    throw v4

    .line 1250
    :cond_6d4
    :goto_6d4
    const-string v3, "EVENT_ANR_RECORD_LOAD_DONE end mLock.notify"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    goto/16 :goto_b68

    .line 1280
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    :sswitch_6db
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1281
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [I

    .line 1282
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1284
    .local v2, "em":Lcom/android/internal/telephony/uicc/IccIoResult;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading USIM email record done email index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", adn i:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1286
    if-eqz v2, :cond_719

    .line 1287
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v3

    .line 1289
    .restart local v3    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-nez v3, :cond_719

    .line 1290
    aget v4, v0, v6

    aget v5, v0, v5

    iget-object v7, v2, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-direct {p0, v4, v5, v7}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updatePhoneAdnRecordWithEmailByIndex(II[B)V

    .line 1294
    .end local v3    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    :cond_719
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1295
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "haman, mReadingEmailNum when load done after minus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1296
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mNeedNotify:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1295
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1298
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-nez v3, :cond_b68

    .line 1299
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_768

    .line 1300
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1301
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1302
    :try_start_75e
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1303
    monitor-exit v3

    goto :goto_768

    :catchall_765
    move-exception v4

    monitor-exit v3
    :try_end_767
    .catchall {:try_start_75e .. :try_end_767} :catchall_765

    throw v4

    .line 1305
    :cond_768
    :goto_768
    const-string v3, "EVENT_EMAIL_RECORD_LOAD_DONE end mLock.notify"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    goto/16 :goto_b68

    .line 1602
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "em":Lcom/android/internal/telephony/uicc/IccIoResult;
    :sswitch_76f
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1603
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [I

    .line 1604
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1605
    .local v2, "re":Lcom/android/internal/telephony/uicc/IccIoResult;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    .line 1606
    .local v3, "isNotify":Z
    if-eqz v2, :cond_7d0

    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    if-eqz v4, :cond_7d0

    .line 1607
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v4

    .line 1609
    .local v4, "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-nez v4, :cond_7d0

    .line 1610
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Loading USIM Iap record done result is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    .line 1611
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1610
    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1616
    :try_start_7a8
    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    aget v8, v0, v6

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 1618
    .local v7, "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_7c0

    .line 1619
    aget v8, v0, v5

    iget-object v9, v2, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7c7

    .line 1621
    :cond_7c0
    const-string v8, "MtkUsimPhoneBookManager"

    const-string v9, "Warning: IAP size is 0"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7a8 .. :try_end_7c7} :catch_7c8

    .line 1625
    :goto_7c7
    goto :goto_7d0

    .line 1623
    .end local v7    # "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :catch_7c8
    move-exception v7

    .line 1624
    .local v7, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v8, "MtkUsimPhoneBookManager"

    const-string v9, "Index out of bounds."

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    .end local v4    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    .end local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_7d0
    :goto_7d0
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1630
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "haman, mReadingIapNum when load done after minus: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1631
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",mNeedNotify "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", Iap pbr:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v0, v6

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", adn i:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1630
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1634
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-nez v4, :cond_b68

    .line 1635
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_833

    .line 1636
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1637
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1638
    :try_start_829
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    .line 1639
    monitor-exit v4

    goto :goto_833

    :catchall_830
    move-exception v5

    monitor-exit v4
    :try_end_832
    .catchall {:try_start_829 .. :try_end_832} :catchall_830

    throw v5

    .line 1641
    :cond_833
    :goto_833
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_IAP_RECORD_LOAD_DONE end mLock.notify:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    goto/16 :goto_b68

    .line 1423
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "re":Lcom/android/internal/telephony/uicc/IccIoResult;
    .end local v3    # "isNotify":Z
    :sswitch_849
    const-string v1, "update UPB GAS done"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1425
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1427
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_859

    .line 1428
    iput v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    goto :goto_879

    .line 1430
    :cond_859
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    .line 1432
    .local v3, "e":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_86a

    .line 1433
    const/16 v2, -0xa

    iput v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    goto :goto_879

    .line 1434
    :cond_86a
    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_3:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_877

    .line 1435
    const/16 v2, -0x14

    iput v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    goto :goto_879

    .line 1437
    :cond_877
    iput v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    .line 1441
    .end local v3    # "e":Lcom/android/internal/telephony/CommandException;
    :goto_879
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update UPB GAS done mResult is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1443
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1444
    :try_start_892
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1445
    monitor-exit v3

    .line 1446
    goto/16 :goto_b68

    .line 1445
    :catchall_89a
    move-exception v2

    monitor-exit v3
    :try_end_89c
    .catchall {:try_start_892 .. :try_end_89c} :catchall_89a

    throw v2

    .line 1448
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_89d
    const-string v1, "update UPB GRP done"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1450
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1452
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_8ad

    .line 1453
    iput v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    goto :goto_8af

    .line 1455
    :cond_8ad
    iput v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    .line 1458
    :goto_8af
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1459
    :try_start_8b2
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 1460
    monitor-exit v2

    .line 1461
    goto/16 :goto_b68

    .line 1460
    :catchall_8ba
    move-exception v3

    monitor-exit v2
    :try_end_8bc
    .catchall {:try_start_8b2 .. :try_end_8bc} :catchall_8ba

    throw v3

    .line 1580
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_8bd
    const-string v1, "update UPB SNE done"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1581
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1582
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_8f6

    .line 1583
    const-string v2, "MtkUsimPhoneBookManager"

    const-string v3, "EVENT_SNE_UPDATE_DONE exception"

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1584
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    .line 1586
    .local v2, "e":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_8e4

    .line 1587
    const/16 v3, -0x28

    iput v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    goto :goto_8f5

    .line 1588
    :cond_8e4
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_3:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_8f1

    .line 1589
    const/16 v3, -0x1e

    iput v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    goto :goto_8f5

    .line 1591
    :cond_8f1
    const/16 v3, -0x32

    iput v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    .line 1593
    .end local v2    # "e":Lcom/android/internal/telephony/CommandException;
    :goto_8f5
    goto :goto_8f8

    .line 1594
    :cond_8f6
    iput v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    .line 1597
    :goto_8f8
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1598
    :try_start_8fb
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 1599
    monitor-exit v2

    .line 1600
    goto/16 :goto_b68

    .line 1599
    :catchall_903
    move-exception v3

    monitor-exit v2
    :try_end_905
    .catchall {:try_start_8fb .. :try_end_905} :catchall_903

    throw v3

    .line 1496
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_906
    const-string v1, "EVENT_AAS_UPDATE_DONE done."

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1498
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1499
    :try_start_90e
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1500
    monitor-exit v1

    .line 1501
    goto/16 :goto_b68

    .line 1500
    :catchall_916
    move-exception v2

    monitor-exit v1
    :try_end_918
    .catchall {:try_start_90e .. :try_end_918} :catchall_916

    throw v2

    .line 1334
    :sswitch_919
    const-string v1, "Updating USIM ANR records done"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1336
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1338
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1340
    .local v2, "res":Lcom/android/internal/telephony/uicc/IccIoResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_934

    .line 1341
    const-string v3, "MtkUsimPhoneBookManager"

    const-string v4, "EVENT_ANR_UPDATE_DONE exception"

    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_946

    .line 1343
    :cond_934
    if-eqz v2, :cond_944

    .line 1344
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v3

    .line 1346
    .local v3, "exception":Lcom/android/internal/telephony/uicc/IccException;
    if-nez v3, :cond_943

    .line 1347
    const-string v4, "Updating USIM ANR records successfully!"

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1348
    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRefreshAnrInfo:Z

    .line 1350
    .end local v3    # "exception":Lcom/android/internal/telephony/uicc/IccException;
    :cond_943
    goto :goto_946

    .line 1351
    :cond_944
    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRefreshAnrInfo:Z

    .line 1355
    :goto_946
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1356
    :try_start_949
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1357
    monitor-exit v3

    .line 1358
    goto/16 :goto_b68

    .line 1357
    :catchall_951
    move-exception v4

    monitor-exit v3
    :try_end_953
    .catchall {:try_start_949 .. :try_end_953} :catchall_951

    throw v4

    .line 1309
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "res":Lcom/android/internal/telephony/uicc/IccIoResult;
    :sswitch_954
    const-string v1, "Updating USIM Email records done"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1311
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1313
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_969

    .line 1314
    const-string v2, "Updating USIM Email records successfully!"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1315
    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRefreshEmailInfo:Z

    goto :goto_972

    .line 1317
    :cond_969
    const-string v2, "MtkUsimPhoneBookManager"

    const-string v3, "EVENT_EMAIL_UPDATE_DONE exception"

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1320
    :goto_972
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1321
    :try_start_975
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 1322
    monitor-exit v2

    .line 1323
    goto/16 :goto_b68

    .line 1322
    :catchall_97d
    move-exception v3

    monitor-exit v2
    :try_end_97f
    .catchall {:try_start_975 .. :try_end_97f} :catchall_97d

    throw v3

    .line 1325
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_980
    const-string v1, "Updating USIM IAP records done"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1327
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1329
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_b68

    .line 1330
    const-string v2, "Updating USIM IAP records successfully!"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_b68

    .line 1400
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_994
    const-string v1, "Load UPB GAS done"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1402
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1404
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_9e6

    .line 1405
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    .line 1406
    .local v2, "gasList":[Ljava/lang/String;
    if-eqz v2, :cond_9e6

    array-length v3, v2

    if-lez v3, :cond_9e6

    .line 1407
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    .line 1408
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9b2
    array-length v4, v2

    if-ge v3, v4, :cond_9e6

    .line 1409
    aget-object v4, v2, v3

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->decodeGas(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1411
    .local v4, "gas":Ljava/lang/String;
    new-instance v5, Lcom/mediatek/internal/telephony/phb/UsimGroup;

    add-int/lit8 v6, v3, 0x1

    invoke-direct {v5, v6, v4}, Lcom/mediatek/internal/telephony/phb/UsimGroup;-><init>(ILjava/lang/String;)V

    .line 1412
    .local v5, "uGasEntry":Lcom/mediatek/internal/telephony/phb/UsimGroup;
    iget-object v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1413
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Load UPB GAS done i is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", gas is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1408
    .end local v4    # "gas":Ljava/lang/String;
    .end local v5    # "uGasEntry":Lcom/mediatek/internal/telephony/phb/UsimGroup;
    add-int/lit8 v3, v3, 0x1

    goto :goto_9b2

    .line 1418
    .end local v2    # "gasList":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_9e6
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1419
    :try_start_9e9
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 1420
    monitor-exit v2

    .line 1421
    goto/16 :goto_b68

    .line 1420
    :catchall_9f1
    move-exception v3

    monitor-exit v2
    :try_end_9f3
    .catchall {:try_start_9e9 .. :try_end_9f3} :catchall_9f1

    throw v3

    .line 1464
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_9f4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1465
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1467
    .local v2, "pbrIndexAAS":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_AAS_LOAD_DONE done pbr "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1470
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_a3e

    .line 1471
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    .line 1473
    .local v3, "aasFileRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v3, :cond_a3e

    .line 1474
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1475
    .local v4, "size":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1477
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_a22
    if-ge v7, v4, :cond_a3c

    .line 1478
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 1479
    .local v8, "aas":[B
    if-nez v8, :cond_a31

    .line 1480
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1481
    goto :goto_a39

    .line 1483
    :cond_a31
    array-length v9, v8

    .line 1484
    invoke-static {v8, v6, v9}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v9

    .line 1485
    .local v9, "aasAlphaTag":Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1477
    .end local v8    # "aas":[B
    .end local v9    # "aasAlphaTag":Ljava/lang/String;
    :goto_a39
    add-int/lit8 v7, v7, 0x1

    goto :goto_a22

    .line 1487
    .end local v7    # "i":I
    :cond_a3c
    iput-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasForAnr:Ljava/util/ArrayList;

    .line 1491
    .end local v3    # "aasFileRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v4    # "size":I
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a3e
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1492
    :try_start_a41
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1493
    monitor-exit v3

    .line 1494
    goto/16 :goto_b68

    .line 1493
    :catchall_a49
    move-exception v4

    monitor-exit v3
    :try_end_a4b
    .catchall {:try_start_a41 .. :try_end_a4b} :catchall_a49

    throw v4

    .line 1267
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "pbrIndexAAS":I
    :sswitch_a4c
    const-string v1, "Loading USIM Email records done"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1269
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1271
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_a5f

    .line 1272
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    .line 1275
    :cond_a5f
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1276
    :try_start_a62
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 1277
    monitor-exit v2

    .line 1278
    goto/16 :goto_b68

    .line 1277
    :catchall_a6a
    move-exception v3

    monitor-exit v2
    :try_end_a6c
    .catchall {:try_start_a62 .. :try_end_a6c} :catchall_a6a

    throw v3

    .line 1254
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_a6d
    const-string v1, "Loading USIM IAP records done"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1256
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1258
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_a80

    .line 1259
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    .line 1262
    :cond_a80
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1263
    :try_start_a83
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 1264
    monitor-exit v2

    .line 1265
    goto/16 :goto_b68

    .line 1264
    :catchall_a8b
    move-exception v3

    monitor-exit v2
    :try_end_a8d
    .catchall {:try_start_a83 .. :try_end_a8d} :catchall_a8b

    throw v3

    .line 1188
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_a8e
    const-string v1, "Loading USIM ADN records done"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1190
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1192
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_b18

    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v2, :cond_b18

    .line 1194
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->hasModemPhbEnhanceCapability(Lcom/android/internal/telephony/uicc/IccFileHandler;)Z

    move-result v2

    if-nez v2, :cond_aca

    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 1195
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_aca

    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_aca

    .line 1197
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 1198
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    .line 1197
    invoke-direct {p0, v2, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->changeAdnRecordNumber(ILjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1199
    .local v2, "adnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1201
    invoke-static {v2}, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->initPhbStorage(Ljava/util/ArrayList;)V

    .line 1203
    .end local v2    # "adnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    goto :goto_b1f

    .line 1204
    :cond_aca
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_b01

    .line 1205
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1207
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->hasModemPhbEnhanceCapability(Lcom/android/internal/telephony/uicc/IccFileHandler;)Z

    move-result v2

    if-nez v2, :cond_ae6

    .line 1208
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->initPhbStorage(Ljava/util/ArrayList;)V

    .line 1212
    :cond_ae6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading USIM ADN records "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_b1f

    .line 1214
    :cond_b01
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading USIM ADN records ar.result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_b1f

    .line 1219
    :cond_b18
    const-string v2, "MtkUsimPhoneBookManager"

    const-string v3, "Loading USIM ADN records fail."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    :goto_b1f
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1223
    :try_start_b22
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1224
    monitor-exit v3

    .line 1225
    goto :goto_b68

    .line 1224
    :catchall_b29
    move-exception v2

    monitor-exit v3
    :try_end_b2b
    .catchall {:try_start_b22 .. :try_end_b2b} :catchall_b29

    throw v2

    .line 1169
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_b2c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: EVENT_PBR_LOAD_DONE:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrNeedNotify:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 1172
    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrNeedNotify:I

    if-ne v1, v2, :cond_b47

    .line 1173
    goto :goto_b68

    .line 1176
    :cond_b47
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1178
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_b56

    .line 1179
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->createPbrFile(Ljava/util/ArrayList;)V

    .line 1182
    :cond_b56
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1183
    :try_start_b59
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 1184
    monitor-exit v2
    :try_end_b5f
    .catchall {:try_start_b59 .. :try_end_b5f} :catchall_b65

    .line 1185
    iget v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrNeedNotify:I

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrNeedNotify:I

    .line 1186
    goto :goto_b68

    .line 1184
    :catchall_b65
    move-exception v3

    :try_start_b66
    monitor-exit v2
    :try_end_b67
    .catchall {:try_start_b66 .. :try_end_b67} :catchall_b65

    throw v3

    .line 1818
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :cond_b68
    :goto_b68
    return-void

    nop

    :sswitch_data_b6a
    .sparse-switch
        0x1 -> :sswitch_b2c
        0x2 -> :sswitch_a8e
        0x3 -> :sswitch_a6d
        0x4 -> :sswitch_a4c
        0x5 -> :sswitch_9f4
        0x6 -> :sswitch_994
        0x7 -> :sswitch_980
        0x8 -> :sswitch_954
        0x9 -> :sswitch_919
        0xa -> :sswitch_906
        0xb -> :sswitch_8bd
        0xc -> :sswitch_89d
        0xd -> :sswitch_849
        0xe -> :sswitch_76f
        0xf -> :sswitch_6db
        0x10 -> :sswitch_665
        0x11 -> :sswitch_5e5
        0x12 -> :sswitch_552
        0x13 -> :sswitch_531
        0x14 -> :sswitch_4fc
        0x15 -> :sswitch_47a
        0x16 -> :sswitch_3cd
        0x17 -> :sswitch_31a
        0x18 -> :sswitch_26b
        0x19 -> :sswitch_217
        0x1a -> :sswitch_1af
        0x1b -> :sswitch_15b
        0x1c -> :sswitch_102
        0x3e8 -> :sswitch_7f
        0x3e9 -> :sswitch_25
    .end sparse-switch
.end method

.method public hasExistGroup(Ljava/lang/String;)I
    .registers 7
    .param p1, "grpName"    # Ljava/lang/String;

    .line 2617
    const/4 v0, -0x1

    .line 2619
    .local v0, "grpId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasExistGroup grpName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2621
    if-nez p1, :cond_18

    .line 2622
    return v0

    .line 2625
    :cond_18
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    if-eqz v1, :cond_67

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_67

    .line 2626
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_23
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_67

    .line 2627
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/phb/UsimGroup;

    .line 2629
    .local v2, "uGas":Lcom/mediatek/internal/telephony/phb/UsimGroup;
    if-eqz v2, :cond_64

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/UsimGroup;->getAlphaTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 2630
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUsimGroupById index is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/UsimGroup;->getRecordIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", name is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2632
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/UsimGroup;->getRecordIndex()I

    move-result v0

    .line 2633
    goto :goto_67

    .line 2626
    .end local v2    # "uGas":Lcom/mediatek/internal/telephony/phb/UsimGroup;
    :cond_64
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 2638
    .end local v1    # "i":I
    :cond_67
    :goto_67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasExistGroup grpId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2639
    return v0
.end method

.method public hasSne()Z
    .registers 6

    .line 4505
    const-string v0, "hasSne begin"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4507
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4508
    :try_start_8
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    if-gez v1, :cond_2e

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->checkIsPhbReady()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 4509
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0x13

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->queryUPBCapability(Landroid/os/Message;)V
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_51

    .line 4512
    :try_start_20
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_25} :catch_26
    .catchall {:try_start_20 .. :try_end_25} :catchall_51

    .line 4515
    goto :goto_2e

    .line 4513
    :catch_26
    move-exception v1

    .line 4514
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_27
    const-string v3, "MtkUsimPhoneBookManager"

    const-string v4, "Interrupted Exception in hasSne"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4517
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_2e
    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_51

    .line 4519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasSne done: N_Sne is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4520
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    aget v0, v0, v2

    if-lez v0, :cond_4f

    const/4 v0, 0x1

    goto :goto_50

    :cond_4f
    const/4 v0, 0x0

    :goto_50
    return v0

    .line 4517
    :catchall_51
    move-exception v1

    :try_start_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v1
.end method

.method public insertUsimAas(Ljava/lang/String;)I
    .registers 21
    .param p1, "aasName"    # Ljava/lang/String;

    .line 4245
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertUsimAas begin"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",mPbrNeedNotify "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrNeedNotify:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4247
    const/4 v0, 0x0

    if-eqz v2, :cond_101

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2d

    goto/16 :goto_101

    .line 4251
    :cond_2d
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->loadAasFiles()Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_35

    return v4

    .line 4253
    :cond_35
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->getUsimAasMaxNameLen()I

    move-result v3

    .line 4254
    .local v3, "limit":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 4256
    .local v5, "len":I
    if-le v5, v3, :cond_40

    .line 4257
    return v0

    .line 4260
    :cond_40
    const/4 v6, -0x1

    .line 4262
    .local v6, "index":I
    iget-object v7, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasLock:Ljava/lang/Object;

    monitor-enter v7

    .line 4263
    const/4 v0, 0x0

    .line 4264
    .local v0, "aasIndex":I
    const/4 v8, 0x0

    .line 4266
    .local v8, "found":Z
    :try_start_46
    iget-object v9, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasForAnr:Ljava/util/ArrayList;

    .line 4268
    .local v9, "allAas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_49
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_67

    .line 4269
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 4270
    .local v11, "value":Ljava/lang/String;
    if-eqz v11, :cond_61

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_5e

    goto :goto_61

    .line 4268
    .end local v11    # "value":Ljava/lang/String;
    :cond_5e
    add-int/lit8 v10, v10, 0x1

    goto :goto_49

    .line 4271
    .restart local v11    # "value":Ljava/lang/String;
    :cond_61
    :goto_61
    const/4 v8, 0x1

    .line 4272
    add-int/lit8 v0, v10, 0x1

    .line 4273
    move v10, v8

    move v8, v0

    goto :goto_69

    .line 4268
    .end local v11    # "value":Ljava/lang/String;
    :cond_67
    move v10, v8

    move v8, v0

    .line 4277
    .end local v0    # "aasIndex":I
    .local v8, "aasIndex":I
    .local v10, "found":Z
    :goto_69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "insertUsimAas aasIndex:"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ",found:"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4278
    if-nez v10, :cond_8a

    .line 4280
    const/4 v0, -0x2

    monitor-exit v7

    return v0

    .line 4283
    :cond_8a
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->encodeToUcs2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 4284
    .local v16, "temp":Ljava/lang/String;
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    move-object v11, v0

    .line 4285
    .local v11, "msg":Landroid/os/Message;
    iget-object v12, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/16 v17, 0x0

    move v15, v8

    move-object/from16 v18, v11

    invoke-virtual/range {v12 .. v18}, Lcom/mediatek/internal/telephony/MtkRIL;->editUPBEntry(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_a1
    .catchall {:try_start_46 .. :try_end_a1} :catchall_fe

    .line 4288
    :try_start_a1
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_a6
    .catch Ljava/lang/InterruptedException; {:try_start_a1 .. :try_end_a6} :catch_a7
    .catchall {:try_start_a1 .. :try_end_a6} :catchall_fe

    .line 4291
    goto :goto_af

    .line 4289
    :catch_a7
    move-exception v0

    .line 4290
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_a8
    const-string v12, "MtkUsimPhoneBookManager"

    const-string v13, "Interrupted Exception in insertUsimAas"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4293
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_af
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 4294
    .local v0, "ar":Landroid/os/AsyncResult;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "insertUsimAas UPB_EF_AAS: ar "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4296
    if-eqz v0, :cond_e8

    iget-object v12, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v12, :cond_ce

    goto :goto_e8

    .line 4306
    :cond_ce
    const-string v12, "MtkUsimPhoneBookManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "insertUsimAas exception "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4307
    monitor-exit v7

    return v4

    .line 4297
    :cond_e8
    :goto_e8
    iget-object v4, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasForAnr:Ljava/util/ArrayList;

    .line 4298
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_f7

    .line 4299
    add-int/lit8 v12, v8, -0x1

    invoke-virtual {v4, v12, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4300
    const-string v12, "insertUsimAas update mAasForAnr done"

    invoke-direct {v1, v12}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    goto :goto_fc

    .line 4302
    :cond_f7
    const-string v12, "insertUsimAas mAasForAnr is null"

    invoke-direct {v1, v12}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4304
    :goto_fc
    monitor-exit v7

    return v8

    .line 4309
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "aasIndex":I
    .end local v9    # "allAas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "found":Z
    .end local v11    # "msg":Landroid/os/Message;
    .end local v16    # "temp":Ljava/lang/String;
    :catchall_fe
    move-exception v0

    monitor-exit v7
    :try_end_100
    .catchall {:try_start_a8 .. :try_end_100} :catchall_fe

    throw v0

    .line 4248
    .end local v3    # "limit":I
    .end local v5    # "len":I
    .end local v6    # "index":I
    :cond_101
    :goto_101
    return v0
.end method

.method public declared-synchronized insertUsimGroup(Ljava/lang/String;)I
    .registers 13
    .param p1, "grpName"    # Ljava/lang/String;

    monitor-enter p0

    .line 2138
    const/4 v0, -0x1

    .line 2140
    .local v0, "index":I
    :try_start_2
    const-string v1, "insertUsimGroup grpName"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2142
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_a6

    .line 2143
    :try_start_a
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    if-eqz v2, :cond_97

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_16

    goto/16 :goto_97

    .line 2146
    :cond_16
    const/4 v2, 0x0

    .line 2147
    .local v2, "gasEntry":Lcom/mediatek/internal/telephony/phb/UsimGroup;
    const/4 v3, 0x0

    .line 2149
    .local v3, "i":I
    const/4 v3, 0x0

    :goto_19
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4f

    .line 2150
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/internal/telephony/phb/UsimGroup;

    move-object v2, v4

    .line 2151
    if-eqz v2, :cond_4c

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/UsimGroup;->getAlphaTag()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4c

    .line 2152
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/UsimGroup;->getRecordIndex()I

    move-result v4

    move v0, v4

    .line 2153
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertUsimGroup index is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2154
    goto :goto_4f

    .line 2149
    :cond_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 2158
    :cond_4f
    :goto_4f
    if-gez v0, :cond_5d

    .line 2159
    const-string v4, "MtkUsimPhoneBookManager"

    const-string v5, "insertUsimGroup fail: gas file is full."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    const/16 v0, -0x14

    .line 2161
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_a .. :try_end_5b} :catchall_a1

    monitor-exit p0

    return v0

    .line 2164
    :cond_5d
    :try_start_5d
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->encodeToUcs2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2166
    .local v8, "temp":Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/16 v7, 0xd

    .line 2167
    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 2166
    move v7, v0

    invoke-virtual/range {v4 .. v10}, Lcom/mediatek/internal/telephony/MtkRIL;->editUPBEntry(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_70
    .catchall {:try_start_5d .. :try_end_70} :catchall_a1

    .line 2170
    :try_start_70
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_75
    .catch Ljava/lang/InterruptedException; {:try_start_70 .. :try_end_75} :catch_76
    .catchall {:try_start_70 .. :try_end_75} :catchall_a1

    .line 2173
    goto :goto_7e

    .line 2171
    :catch_76
    move-exception v4

    .line 2172
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_77
    const-string v5, "MtkUsimPhoneBookManager"

    const-string v6, "Interrupted Exception in insertUsimGroup"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2175
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_7e
    iget v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    if-gez v4, :cond_8e

    .line 2176
    const-string v4, "MtkUsimPhoneBookManager"

    const-string v5, "result is negative. insertUsimGroup"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    iget v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    monitor-exit v1
    :try_end_8c
    .catchall {:try_start_77 .. :try_end_8c} :catchall_a1

    monitor-exit p0

    return v4

    .line 2179
    :cond_8e
    :try_start_8e
    invoke-virtual {v2, p1}, Lcom/mediatek/internal/telephony/phb/UsimGroup;->setAlphaTag(Ljava/lang/String;)V

    .line 2180
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_9e

    .line 2144
    .end local v2    # "gasEntry":Lcom/mediatek/internal/telephony/phb/UsimGroup;
    .end local v3    # "i":I
    .end local v8    # "temp":Ljava/lang/String;
    :cond_97
    :goto_97
    const-string v2, "MtkUsimPhoneBookManager"

    const-string v3, "insertUsimGroup fail "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    :goto_9e
    monitor-exit v1
    :try_end_9f
    .catchall {:try_start_8e .. :try_end_9f} :catchall_a1

    .line 2184
    monitor-exit p0

    return v0

    .line 2183
    :catchall_a1
    move-exception v2

    :goto_a2
    :try_start_a2
    monitor-exit v1
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a4

    :try_start_a3
    throw v2
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a6

    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;
    :catchall_a4
    move-exception v2

    goto :goto_a2

    .line 2137
    .end local v0    # "index":I
    .end local p1    # "grpName":Ljava/lang/String;
    :catchall_a6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isAdnAccessible()Z
    .registers 7

    .line 5203
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v1, 0x1

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v2, :cond_40

    .line 5204
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5205
    const/16 v2, 0x14

    :try_start_14
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 5207
    .local v2, "response":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v4, 0x6f3a

    invoke-virtual {v3, v4, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->selectEFFile(ILandroid/os/Message;)V
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_3d

    .line 5209
    :try_start_1f
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_24} :catch_25
    .catchall {:try_start_1f .. :try_end_24} :catchall_3d

    .line 5212
    goto :goto_2d

    .line 5210
    :catch_25
    move-exception v3

    .line 5211
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_26
    const-string v4, "MtkUsimPhoneBookManager"

    const-string v5, "Interrupted Exception in isAdnAccessible"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5213
    .end local v2    # "response":Landroid/os/Message;
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_3d

    .line 5215
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEfData:Lcom/mediatek/internal/telephony/uicc/EFResponseData;

    if-eqz v0, :cond_40

    .line 5216
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/uicc/EFResponseData;->getFileStatus()I

    move-result v0

    .line 5224
    .local v0, "fs":I
    and-int/lit8 v2, v0, 0x5

    if-lez v2, :cond_3b

    .line 5225
    return v1

    .line 5227
    :cond_3b
    const/4 v1, 0x0

    return v1

    .line 5213
    .end local v0    # "fs":I
    :catchall_3d
    move-exception v1

    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v1

    .line 5231
    :cond_40
    return v1
.end method

.method public isAnrCapacityFree(Ljava/lang/String;IILcom/mediatek/internal/telephony/phb/MtkAdnRecord;)Z
    .registers 16
    .param p1, "anr"    # Ljava/lang/String;
    .param p2, "adnIndex"    # I
    .param p3, "anrIndex"    # I
    .param p4, "oldAdn"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    .line 2701
    const/4 v0, 0x0

    .line 2703
    .local v0, "oldAnr":Ljava/lang/String;
    if-eqz p4, :cond_7

    .line 2704
    invoke-virtual {p4, p3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAdditionalNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 2707
    :cond_7
    const/4 v1, 0x1

    if-eqz p1, :cond_11f

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11f

    if-ltz p3, :cond_11f

    .line 2708
    const/16 v2, 0xc4

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->getUsimEfType(I)I

    move-result v3

    const/16 v4, 0xa8

    if-eq v3, v4, :cond_11f

    if-eqz v0, :cond_2a

    const-string v3, ""

    .line 2709
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    goto/16 :goto_11f

    .line 2717
    :cond_2a
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->hasModemPhbEnhanceCapability(Lcom/android/internal/telephony/uicc/IccFileHandler;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_db

    .line 2719
    add-int/lit8 v3, p2, -0x1

    iget v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnFileSize:I

    div-int/2addr v3, v5

    .line 2720
    .local v3, "pbrRecNum":I
    add-int/lit8 v6, p2, -0x1

    rem-int/2addr v6, v5

    .line 2724
    .local v6, "anrRecNum":I
    :try_start_3b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAnrCapacityFree anr: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2726
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRecordSize:Landroid/util/SparseArray;

    if-eqz v5, :cond_b0

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-nez v5, :cond_5a

    goto :goto_b0

    .line 2731
    :cond_5a
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    # getter for: Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v5

    mul-int/lit16 v7, p3, 0x100

    add-int/2addr v7, v2

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 2734
    .local v2, "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    if-nez v2, :cond_72

    .line 2735
    return v4

    .line 2738
    :cond_72
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v5

    .line 2739
    .local v5, "anrFileId":I
    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRecordSize:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    .line 2740
    .local v7, "sizeInfo":[I
    const/4 v8, 0x2

    aget v8, v7, v8

    .line 2741
    .local v8, "size":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isAnrCapacityFree size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2743
    add-int/lit8 v9, v6, 0x1

    if-ge v8, v9, :cond_ae

    .line 2744
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isAnrCapacityFree: anrRecNum out of size: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2745
    return v4

    .line 2753
    .end local v2    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v5    # "anrFileId":I
    .end local v7    # "sizeInfo":[I
    .end local v8    # "size":I
    :cond_ae
    nop

    .line 2755
    return v1

    .line 2727
    :cond_b0
    :goto_b0
    const-string v1, "isAnrCapacityFree: mAnrFileSize is empty"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V
    :try_end_b5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3b .. :try_end_b5} :catch_d2
    .catch Ljava/lang/NullPointerException; {:try_start_3b .. :try_end_b5} :catch_b6

    .line 2728
    return v4

    .line 2750
    :catch_b6
    move-exception v1

    .line 2751
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "MtkUsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAnrCapacityFree exception:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2752
    return v4

    .line 2747
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_d2
    move-exception v1

    .line 2748
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v2, "MtkUsimPhoneBookManager"

    const-string v5, "isAnrCapacityFree Index out of bounds."

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2749
    return v4

    .line 2758
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v3    # "pbrRecNum":I
    .end local v6    # "anrRecNum":I
    :cond_db
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2759
    :try_start_de
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrInfo:Ljava/util/ArrayList;

    if-eqz v3, :cond_e8

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p3, v3, :cond_103

    .line 2760
    :cond_e8
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    add-int/lit8 v5, p3, 0x1

    const/16 v6, 0x1a

    .line 2761
    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 2760
    invoke-virtual {v3, v4, v5, v6}, Lcom/mediatek/internal/telephony/MtkRIL;->queryUPBAvailable(IILandroid/os/Message;)V
    :try_end_f5
    .catchall {:try_start_de .. :try_end_f5} :catchall_11c

    .line 2764
    :try_start_f5
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_fa
    .catch Ljava/lang/InterruptedException; {:try_start_f5 .. :try_end_fa} :catch_fb
    .catchall {:try_start_f5 .. :try_end_fa} :catchall_11c

    .line 2767
    goto :goto_103

    .line 2765
    :catch_fb
    move-exception v3

    .line 2766
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_fc
    const-string v5, "MtkUsimPhoneBookManager"

    const-string v6, "Interrupted Exception in isAnrCapacityFree"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2769
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_103
    :goto_103
    monitor-exit v2
    :try_end_104
    .catchall {:try_start_fc .. :try_end_104} :catchall_11c

    .line 2771
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrInfo:Ljava/util/ArrayList;

    if-eqz v2, :cond_11b

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_11b

    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrInfo:Ljava/util/ArrayList;

    .line 2772
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    aget v2, v2, v1

    if-lez v2, :cond_11b

    .line 2773
    return v1

    .line 2775
    :cond_11b
    return v4

    .line 2769
    :catchall_11c
    move-exception v1

    :try_start_11d
    monitor-exit v2
    :try_end_11e
    .catchall {:try_start_11d .. :try_end_11e} :catchall_11c

    throw v1

    .line 2714
    :cond_11f
    :goto_11f
    return v1
.end method

.method public isUsimPhbEfAndNeedReset(I)Z
    .registers 9
    .param p1, "fileId"    # I

    .line 5239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isUsimPhbEfAndNeedReset, fileId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 5241
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_97

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_28

    goto :goto_97

    .line 5246
    :cond_28
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5248
    .local v0, "numRecs":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2f
    if-ge v2, v0, :cond_91

    .line 5249
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    # getter for: Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v3

    .line 5250
    .local v3, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    const/16 v4, 0xc0

    .local v4, "j":I
    :goto_3f
    const/16 v5, 0xcb

    if-gt v4, v5, :cond_8e

    .line 5251
    const/16 v6, 0xc5

    if-eq v4, v6, :cond_76

    const/16 v6, 0xc9

    if-eq v4, v6, :cond_76

    if-ne v4, v5, :cond_4e

    goto :goto_76

    .line 5255
    :cond_4e
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_8b

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v5

    if-ne p1, v5, :cond_8b

    .line 5256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isUsimPhbEfAndNeedReset, return true with EF: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 5257
    const/4 v1, 0x1

    return v1

    .line 5253
    :cond_76
    :goto_76
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isUsimPhbEfAndNeedReset, not reset EF: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 5254
    nop

    .line 5250
    :cond_8b
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    .line 5248
    .end local v3    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v4    # "j":I
    :cond_8e
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 5262
    .end local v2    # "i":I
    :cond_91
    const-string v2, "isUsimPhbEfAndNeedReset, return false."

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 5263
    return v1

    .line 5242
    .end local v0    # "numRecs":I
    :cond_97
    :goto_97
    const-string v0, "MtkUsimPhoneBookManager"

    const-string v2, "isUsimPhbEfAndNeedReset, No PBR files"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5243
    return v1
.end method

.method public loadEfFilesFromUsim(Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 11
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;",
            ">;"
        }
    .end annotation

    .line 292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 293
    .local v0, "prevTime":J
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 294
    const/4 v3, 0x0

    :try_start_8
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIsReset:Z

    .line 295
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 296
    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRefreshCache:Z

    if-eqz v4, :cond_1b

    .line 297
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRefreshCache:Z

    .line 298
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->refreshCache()V

    .line 300
    :cond_1b
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    monitor-exit v2

    return-object v3

    .line 303
    :cond_1f
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_2a

    monitor-exit v2

    return-object v5

    .line 307
    :cond_2a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadEfFilesFromUsim, mPbrNeedNotify ="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrNeedNotify:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 308
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v6, 0x1

    if-eqz v4, :cond_4b

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_53

    .line 309
    :cond_4b
    iget v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrNeedNotify:I

    add-int/2addr v4, v6

    iput v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrNeedNotify:I

    .line 310
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readPbrFileAndWait()V

    .line 313
    :cond_53
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v4, :cond_181

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_5f

    goto/16 :goto_181

    .line 331
    :cond_5f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadEfFilesFromUsim mPbrNeedNotify:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrNeedNotify:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 333
    iget v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecordSize:I

    if-gez v4, :cond_7c

    .line 334
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readEmailRecordSize()V

    .line 337
    :cond_7c
    iget v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrRecordSize:I

    if-gez v4, :cond_83

    .line 338
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readAnrRecordSize()V

    .line 341
    :cond_83
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v4, :cond_17f

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_8f

    goto/16 :goto_17f

    .line 345
    :cond_8f
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    # getter for: Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v4

    const/16 v5, 0xc0

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v4

    .line 346
    .local v4, "adnEf":I
    if-lez v4, :cond_b8

    .line 347
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v5

    .line 348
    .local v5, "size":[I
    if-eqz v5, :cond_b8

    array-length v7, v5

    const/4 v8, 0x3

    if-ne v7, v8, :cond_b8

    .line 349
    const/4 v7, 0x2

    aget v7, v5, v7

    iput v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnFileSize:I

    .line 353
    .end local v5    # "size":[I
    :cond_b8
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    # getter for: Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v5

    const/16 v7, 0xc3

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_e5

    .line 354
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    .line 355
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    # getter for: Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v5

    .line 354
    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    .line 358
    :cond_e5
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 360
    .local v5, "numRecs":I
    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {v7}, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->hasModemPhbEnhanceCapability(Lcom/android/internal/telephony/uicc/IccFileHandler;)Z

    move-result v7

    if-nez v7, :cond_100

    .line 361
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f4
    if-ge v3, v5, :cond_ff

    .line 362
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readAASFileAndWait(I)V

    .line 363
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readAdnFileAndWaitForUICC(I)V

    .line 361
    add-int/lit8 v3, v3, 0x1

    goto :goto_f4

    .end local v3    # "i":I
    :cond_ff
    goto :goto_106

    .line 368
    :cond_100
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readAasFileAndWaitOptmz()V

    .line 369
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readAdnFileAndWait(I)Z

    .line 372
    :goto_106
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_117

    .line 373
    const-string v3, "loadEfFilesFromUsim mPhoneBookRecords Empty"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 374
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    monitor-exit v2

    return-object v3

    .line 379
    :cond_117
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->hasModemPhbEnhanceCapability(Lcom/android/internal/telephony/uicc/IccFileHandler;)Z

    move-result v3

    if-nez v3, :cond_12f

    .line 380
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_120
    if-ge v3, v5, :cond_12e

    .line 381
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readSneFileAndWait(I)V

    .line 382
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readAnrFileAndWait(I)V

    .line 383
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readEmailFileAndWait(I)V

    .line 380
    add-int/lit8 v3, v3, 0x1

    goto :goto_120

    .end local v3    # "i":I
    :cond_12e
    goto :goto_142

    .line 387
    :cond_12f
    const-string v3, "loadEfFilesFromUsim Speed up read begin"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 388
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readSneFileAndWaitOptmz()V

    .line 389
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readAnrFileAndWaitOptmz()V

    .line 390
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readEmailFileAndWaitOptmz()V

    .line 391
    const-string v3, "loadEfFilesFromUsim Speed up read end"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 394
    :goto_142
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readGrpIdsAndWait()V

    .line 396
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v3, :cond_14b

    .line 397
    iput v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbDone:I

    .line 400
    .end local v4    # "adnEf":I
    .end local v5    # "numRecs":I
    :cond_14b
    monitor-exit v2
    :try_end_14c
    .catchall {:try_start_8 .. :try_end_14c} :catchall_1c4

    .line 406
    if-eqz v3, :cond_177

    .line 407
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 408
    .local v2, "endTime":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadEfFilesFromUsim Time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v5, v2, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " AppType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 409
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 408
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 410
    .end local v2    # "endTime":J
    goto :goto_17c

    .line 411
    :cond_177
    const-string v2, "loadEfFilesFromUsim end"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 414
    :goto_17c
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    return-object v2

    .line 342
    :cond_17f
    :goto_17f
    :try_start_17f
    monitor-exit v2

    return-object v5

    .line 316
    :cond_181
    :goto_181
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->checkIsPhbReady()Z

    move-result v4

    if-eqz v4, :cond_1bd

    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIsReset:Z

    if-nez v4, :cond_1bd

    .line 317
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readAdnFileAndWait(I)Z

    move-result v4

    if-ne v6, v4, :cond_19d

    .line 318
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 319
    iput v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecordSize:I

    .line 320
    iput v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrRecordSize:I

    .line 321
    iput v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbDone:I

    .line 323
    :cond_19d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadEfFilesFromUsim getRecordIfLoaded EF_ADN pbrP:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 324
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    const/16 v4, 0x6f3a

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->getRecordsIfLoaded(ILjava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-exit v2

    return-object v3

    .line 327
    :cond_1bd
    const-string v3, "loadEfFilesFromUsim phb not ready and Reset"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 328
    monitor-exit v2

    return-object v5

    .line 400
    :catchall_1c4
    move-exception v3

    monitor-exit v2
    :try_end_1c6
    .catchall {:try_start_17f .. :try_end_1c6} :catchall_1c4

    throw v3
.end method

.method public loadPBRFiles()V
    .registers 3

    .line 4441
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9

    .line 4442
    return-void

    .line 4445
    :cond_9
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4448
    :try_start_c
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1f

    .line 4449
    :cond_16
    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrNeedNotify:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrNeedNotify:I

    .line 4450
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->readPbrFileAndWait()V

    .line 4452
    :cond_1f
    monitor-exit v0

    .line 4453
    return-void

    .line 4452
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_21

    throw v1
.end method

.method public moveContactFromGroupsToGroups(I[I[I)Z
    .registers 20
    .param p1, "adnIndex"    # I
    .param p2, "fromGrpIdList"    # [I
    .param p3, "toGrpIdList"    # [I

    .line 2436
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const/4 v5, 0x0

    .line 2438
    .local v5, "ret":Z
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    const/4 v6, 0x0

    if-eqz v0, :cond_142

    if-lez v2, :cond_142

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v2, v0, :cond_18

    goto/16 :goto_142

    .line 2443
    :cond_18
    iget-object v7, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2444
    :try_start_1b
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    move-object v8, v0

    .line 2446
    .local v8, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    if-eqz v8, :cond_13d

    .line 2449
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    const/4 v9, 0x7

    aget v10, v0, v9

    .line 2450
    .local v10, "grpCount":I
    aget v11, v0, v9

    const/4 v12, 0x5

    aget v13, v0, v12

    if-le v11, v13, :cond_37

    aget v0, v0, v12

    goto :goto_39

    :cond_37
    aget v0, v0, v9

    :goto_39
    move v9, v0

    .line 2451
    .local v9, "grpMaxCount":I
    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 2453
    .local v11, "grpIds":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " moveContactFromGroupsToGroups the adn index is "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getRecId()I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " original grpIds is "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", fromGrpIdList: "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2456
    if-nez v3, :cond_62

    const-string v12, "null"

    goto :goto_63

    :cond_62
    move-object v12, v3

    :goto_63
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ", toGrpIdList: "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2457
    if-nez v4, :cond_70

    const-string v12, "null"

    goto :goto_71

    :cond_70
    move-object v12, v4

    :goto_71
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2453
    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2459
    new-array v0, v10, [I

    move-object v12, v0

    .line 2461
    .local v12, "grpIdIntArray":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7f
    if-ge v0, v10, :cond_86

    .line 2462
    aput v6, v12, v0

    .line 2461
    add-int/lit8 v0, v0, 0x1

    goto :goto_7f

    .line 2466
    .end local v0    # "i":I
    :cond_86
    if-eqz v11, :cond_9c

    .line 2467
    const-string v0, ","

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2468
    .local v0, "grpIdStrArray":[Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_8f
    if-ge v13, v9, :cond_9c

    .line 2469
    aget-object v14, v0, v13

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    aput v14, v12, v13

    .line 2468
    add-int/lit8 v13, v13, 0x1

    goto :goto_8f

    .line 2474
    .end local v0    # "grpIdStrArray":[Ljava/lang/String;
    .end local v13    # "i":I
    :cond_9c
    if-eqz v3, :cond_b3

    .line 2475
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9f
    array-length v13, v3

    if-ge v0, v13, :cond_b3

    .line 2476
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_a3
    if-ge v13, v9, :cond_b0

    .line 2477
    aget v14, v12, v13

    aget v15, v3, v0

    if-ne v14, v15, :cond_ad

    .line 2478
    aput v6, v12, v13

    .line 2476
    :cond_ad
    add-int/lit8 v13, v13, 0x1

    goto :goto_a3

    .line 2475
    .end local v13    # "j":I
    :cond_b0
    add-int/lit8 v0, v0, 0x1

    goto :goto_9f

    .line 2485
    .end local v0    # "i":I
    :cond_b3
    if-eqz v4, :cond_ff

    .line 2486
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_b6
    array-length v13, v4

    if-ge v0, v13, :cond_ff

    .line 2487
    const/4 v13, 0x0

    .line 2488
    .local v13, "bEmpty":Z
    const/4 v14, 0x0

    .line 2491
    .local v14, "bExist":Z
    const/4 v15, 0x0

    .local v15, "k":I
    :goto_bc
    if-ge v15, v9, :cond_cc

    .line 2492
    aget v6, v12, v15

    aget v3, v4, v0

    if-ne v6, v3, :cond_c6

    .line 2493
    const/4 v14, 0x1

    .line 2494
    goto :goto_cc

    .line 2491
    :cond_c6
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, p2

    const/4 v6, 0x0

    goto :goto_bc

    .line 2498
    .end local v15    # "k":I
    :cond_cc
    :goto_cc
    const/4 v3, 0x1

    if-ne v14, v3, :cond_d7

    .line 2499
    const-string v3, "MtkUsimPhoneBookManager"

    const-string v6, "moveContactFromGroupsToGroups the adn isalready in the group."

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2501
    goto :goto_f9

    .line 2505
    :cond_d7
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_d8
    if-ge v3, v9, :cond_ed

    .line 2506
    aget v6, v12, v3

    if-eqz v6, :cond_e8

    aget v6, v12, v3

    const/16 v15, 0xff

    if-ne v6, v15, :cond_e5

    goto :goto_e8

    .line 2505
    :cond_e5
    add-int/lit8 v3, v3, 0x1

    goto :goto_d8

    .line 2507
    :cond_e8
    :goto_e8
    const/4 v13, 0x1

    .line 2508
    aget v6, v4, v0

    aput v6, v12, v3

    .line 2513
    .end local v3    # "j":I
    :cond_ed
    if-nez v13, :cond_f9

    .line 2514
    const-string v3, "MtkUsimPhoneBookManager"

    const-string v6, "moveContactFromGroupsToGroups no empty to add."

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2515
    monitor-exit v7

    const/4 v3, 0x0

    return v3

    .line 2486
    .end local v13    # "bEmpty":Z
    .end local v14    # "bExist":Z
    :cond_f9
    :goto_f9
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, p2

    const/4 v6, 0x0

    goto :goto_b6

    .line 2520
    .end local v0    # "i":I
    :cond_ff
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0xc

    .line 2521
    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 2520
    invoke-virtual {v0, v2, v12, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->writeUPBGrpEntry(I[ILandroid/os/Message;)V
    :try_end_10a
    .catchall {:try_start_1b .. :try_end_10a} :catchall_13f

    .line 2523
    :try_start_10a
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_10f
    .catch Ljava/lang/InterruptedException; {:try_start_10a .. :try_end_10f} :catch_110
    .catchall {:try_start_10a .. :try_end_10f} :catchall_13f

    .line 2526
    goto :goto_118

    .line 2524
    :catch_110
    move-exception v0

    .line 2525
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_111
    const-string v3, "MtkUsimPhoneBookManager"

    const-string v6, "Interrupted Exception in moveContactFromGroupsToGroups"

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_118
    iget v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    if-nez v0, :cond_13d

    .line 2529
    const/4 v5, 0x1

    .line 2530
    add-int/lit8 v0, v2, -0x1

    invoke-direct {v1, v0, v2, v12}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updatePhoneAdnRecordWithGrpByIndex(II[I)V

    .line 2531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveContactFromGroupsToGroups the adn index is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2532
    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getRecId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2531
    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2533
    const/4 v0, -0x1

    iput v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    .line 2536
    .end local v8    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v9    # "grpMaxCount":I
    .end local v10    # "grpCount":I
    .end local v11    # "grpIds":Ljava/lang/String;
    .end local v12    # "grpIdIntArray":[I
    :cond_13d
    monitor-exit v7

    .line 2537
    return v5

    .line 2536
    :catchall_13f
    move-exception v0

    monitor-exit v7
    :try_end_141
    .catchall {:try_start_111 .. :try_end_141} :catchall_13f

    throw v0

    .line 2439
    :cond_142
    :goto_142
    const-string v0, "MtkUsimPhoneBookManager"

    const-string v3, "moveContactFromGroupsToGroups no records or invalid index."

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2440
    const/4 v0, 0x0

    return v0
.end method

.method public readEFLinearRecordSize(I)[I
    .registers 8
    .param p1, "fileId"    # I

    .line 5089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readEFLinearRecordSize fileid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",recordNum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadEFLinerRecordSizeNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 5092
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5093
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 5095
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5096
    :try_start_31
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v3, 0x1

    if-eqz v2, :cond_50

    .line 5098
    iget v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadEFLinerRecordSizeNum:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadEFLinerRecordSizeNum:I

    .line 5099
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v2, p1, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V
    :try_end_40
    .catchall {:try_start_31 .. :try_end_40} :catchall_d8

    .line 5102
    :try_start_40
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_45
    .catch Ljava/lang/InterruptedException; {:try_start_40 .. :try_end_45} :catch_46
    .catchall {:try_start_40 .. :try_end_45} :catchall_d8

    .line 5105
    goto :goto_57

    .line 5103
    :catch_46
    move-exception v2

    .line 5104
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_47
    const-string v4, "MtkUsimPhoneBookManager"

    const-string v5, "Interrupted Exception in readEFLinearRecordSize"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5105
    nop

    .end local v2    # "e":Ljava/lang/InterruptedException;
    goto :goto_57

    .line 5107
    :cond_50
    const-string v2, "MtkUsimPhoneBookManager"

    const-string v4, "readEFLinearRecordSize-IccFileHandler is null"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5110
    :goto_57
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v2, :cond_60

    .line 5111
    iget v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadEFLinerRecordSizeNum:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadEFLinerRecordSizeNum:I

    .line 5114
    :cond_60
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRecordSize:Landroid/util/SparseArray;

    if-eqz v2, :cond_6b

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    goto :goto_6c

    :cond_6b
    const/4 v2, 0x0

    .line 5116
    .local v2, "recordSize":[I
    :goto_6c
    if-eqz v2, :cond_b5

    .line 5117
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readEFLinearRecordSize fileid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    aget v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",total:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v2, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",count:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    aget v3, v2, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",recordNum:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mReadEFLinerRecordSizeNum:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    goto :goto_d6

    .line 5121
    :cond_b5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readEFLinearRecordSize fileid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",recordSize: null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 5124
    :goto_d6
    monitor-exit v1

    return-object v2

    .line 5125
    .end local v2    # "recordSize":[I
    :catchall_d8
    move-exception v2

    monitor-exit v1
    :try_end_da
    .catchall {:try_start_47 .. :try_end_da} :catchall_d8

    throw v2
.end method

.method public declared-synchronized removeContactFromGroup(II)Z
    .registers 15
    .param p1, "adnIndex"    # I
    .param p2, "grpIndex"    # I

    monitor-enter p0

    .line 2310
    const/4 v0, 0x0

    .line 2312
    .local v0, "ret":Z
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeContactFromGroup begin adnIndex is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to grp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2314
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_103

    if-lez p1, :cond_103

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le p1, v1, :cond_2d

    goto/16 :goto_103

    .line 2319
    :cond_2d
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_30
    .catchall {:try_start_2 .. :try_end_30} :catchall_10c

    .line 2323
    :try_start_30
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_3a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_30 .. :try_end_3a} :catch_d6
    .catchall {:try_start_30 .. :try_end_3a} :catchall_d4

    .line 2329
    .local v3, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    nop

    .line 2331
    if-eqz v3, :cond_b5

    .line 2332
    :try_start_3d
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v4

    .line 2333
    .local v4, "grpList":Ljava/lang/String;
    if-nez v4, :cond_4d

    .line 2334
    const-string v5, "MtkUsimPhoneBookManager"

    const-string v6, " the adn is not in any group. "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2335
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_3d .. :try_end_4b} :catchall_100

    monitor-exit p0

    return v2

    .line 2338
    :cond_4d
    :try_start_4d
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2339
    .local v5, "grpIds":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 2340
    .local v6, "bExist":Z
    const/4 v7, -0x1

    .line 2341
    .local v7, "nOrder":I
    array-length v8, v5

    new-array v8, v8, [I

    .line 2343
    .local v8, "grpIdArray":[I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_59
    array-length v10, v5

    if-ge v9, v10, :cond_81

    .line 2344
    aget-object v10, v5, v9

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v8, v9

    .line 2345
    aget v10, v8, v9

    if-ne p2, v10, :cond_7e

    .line 2346
    const/4 v6, 0x1

    .line 2347
    move v7, v9

    .line 2348
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " removeContactFromGroup the adn is in the group. i is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2343
    :cond_7e
    add-int/lit8 v9, v9, 0x1

    goto :goto_59

    .line 2352
    .end local v9    # "i":I
    :cond_81
    if-eqz v6, :cond_ae

    if-ltz v7, :cond_ae

    .line 2353
    aput v2, v8, v7

    .line 2354
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v9, 0xc

    .line 2355
    invoke-virtual {p0, v9}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 2354
    invoke-virtual {v2, p1, v8, v9}, Lcom/mediatek/internal/telephony/MtkRIL;->writeUPBGrpEntry(I[ILandroid/os/Message;)V
    :try_end_92
    .catchall {:try_start_4d .. :try_end_92} :catchall_100

    .line 2357
    :try_start_92
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_97
    .catch Ljava/lang/InterruptedException; {:try_start_92 .. :try_end_97} :catch_98
    .catchall {:try_start_92 .. :try_end_97} :catchall_100

    .line 2360
    goto :goto_a0

    .line 2358
    :catch_98
    move-exception v2

    .line 2359
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_99
    const-string v9, "MtkUsimPhoneBookManager"

    const-string v10, "Interrupted Exception in removeContactFromGroup"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_a0
    iget v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    if-nez v2, :cond_b5

    .line 2363
    const/4 v0, 0x1

    .line 2364
    add-int/lit8 v2, p1, -0x1

    invoke-direct {p0, v2, p1, v8}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updatePhoneAdnRecordWithGrpByIndex(II[I)V

    .line 2365
    const/4 v2, -0x1

    iput v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    goto :goto_b5

    .line 2369
    :cond_ae
    const-string v2, "MtkUsimPhoneBookManager"

    const-string v9, " removeContactFromGroup the adn is not in the group. "

    invoke-static {v2, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b5
    .catchall {:try_start_99 .. :try_end_b5} :catchall_100

    .line 2372
    .end local v3    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v4    # "grpList":Ljava/lang/String;
    .end local v5    # "grpIds":[Ljava/lang/String;
    .end local v6    # "bExist":Z
    .end local v7    # "nOrder":I
    .end local v8    # "grpIdArray":[I
    :cond_b5
    :goto_b5
    :try_start_b5
    monitor-exit v1
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_d4

    .line 2373
    :try_start_b6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeContactFromGroup end adnIndex is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to grp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V
    :try_end_d2
    .catchall {:try_start_b6 .. :try_end_d2} :catchall_10c

    .line 2374
    monitor-exit p0

    return v0

    .line 2372
    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;
    :catchall_d4
    move-exception v2

    goto :goto_101

    .line 2324
    :catch_d6
    move-exception v3

    .line 2325
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_d7
    const-string v4, "MtkUsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeContactFromGroup: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 2327
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "index is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, p1, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2325
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    monitor-exit v1
    :try_end_fe
    .catchall {:try_start_d7 .. :try_end_fe} :catchall_100

    monitor-exit p0

    return v2

    .line 2372
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;
    :catchall_100
    move-exception v2

    :goto_101
    :try_start_101
    monitor-exit v1
    :try_end_102
    .catchall {:try_start_101 .. :try_end_102} :catchall_d4

    :try_start_102
    throw v2

    .line 2315
    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;
    :cond_103
    :goto_103
    const-string v1, "MtkUsimPhoneBookManager"

    const-string v3, "removeContactFromGroup no records or invalid index."

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10a
    .catchall {:try_start_102 .. :try_end_10a} :catchall_10c

    .line 2316
    monitor-exit p0

    return v2

    .line 2309
    .end local v0    # "ret":Z
    .end local p1    # "adnIndex":I
    .end local p2    # "grpIndex":I
    :catchall_10c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeContactGroup(I)Z
    .registers 12
    .param p1, "adnIndex"    # I

    .line 2546
    const/4 v0, 0x0

    .line 2548
    .local v0, "ret":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeContactsGroup adnIndex is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2550
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_e9

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_21

    goto/16 :goto_e9

    .line 2554
    :cond_21
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2558
    const/4 v2, 0x0

    :try_start_25
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_2f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_25 .. :try_end_2f} :catch_be
    .catchall {:try_start_25 .. :try_end_2f} :catchall_bc

    .line 2564
    .local v3, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    nop

    .line 2566
    if-nez v3, :cond_34

    .line 2567
    :try_start_32
    monitor-exit v1

    return v0

    .line 2570
    :cond_34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeContactsGroup rec is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2572
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v4

    .line 2574
    .local v4, "grpList":Ljava/lang/String;
    if-nez v4, :cond_50

    .line 2575
    monitor-exit v1

    return v0

    .line 2578
    :cond_50
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2579
    .local v5, "grpIds":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 2581
    .local v6, "hasGroup":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_58
    array-length v8, v5

    if-ge v7, v8, :cond_6c

    .line 2582
    aget-object v8, v5, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 2583
    .local v8, "value":I
    if-lez v8, :cond_69

    const/16 v9, 0xff

    if-ge v8, v9, :cond_69

    .line 2584
    const/4 v6, 0x1

    .line 2585
    goto :goto_6c

    .line 2581
    .end local v8    # "value":I
    :cond_69
    add-int/lit8 v7, v7, 0x1

    goto :goto_58

    .line 2589
    .end local v7    # "i":I
    :cond_6c
    :goto_6c
    if-eqz v6, :cond_ba

    .line 2590
    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    new-array v8, v2, [I

    const/16 v9, 0xc

    .line 2591
    invoke-virtual {p0, v9}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 2590
    invoke-virtual {v7, p1, v8, v9}, Lcom/mediatek/internal/telephony/MtkRIL;->writeUPBGrpEntry(I[ILandroid/os/Message;)V
    :try_end_7b
    .catchall {:try_start_32 .. :try_end_7b} :catchall_bc

    .line 2594
    :try_start_7b
    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_80
    .catch Ljava/lang/InterruptedException; {:try_start_7b .. :try_end_80} :catch_81
    .catchall {:try_start_7b .. :try_end_80} :catchall_bc

    .line 2597
    goto :goto_89

    .line 2595
    :catch_81
    move-exception v7

    .line 2596
    .local v7, "e":Ljava/lang/InterruptedException;
    :try_start_82
    const-string v8, "MtkUsimPhoneBookManager"

    const-string v9, "Interrupted Exception in removeContactGroup"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2599
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :goto_89
    iget v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    if-nez v7, :cond_ba

    .line 2600
    const/4 v0, 0x1

    .line 2601
    array-length v7, v5

    new-array v7, v7, [I

    .line 2603
    .local v7, "grpIdArray":[I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_92
    array-length v9, v5

    if-ge v8, v9, :cond_9a

    .line 2604
    aput v2, v7, v8

    .line 2603
    add-int/lit8 v8, v8, 0x1

    goto :goto_92

    .line 2606
    .end local v8    # "i":I
    :cond_9a
    add-int/lit8 v2, p1, -0x1

    invoke-direct {p0, v2, p1, v7}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updatePhoneAdnRecordWithGrpByIndex(II[I)V

    .line 2607
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " removeContactGroup the adn index is "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2608
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getRecId()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2607
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2609
    const/4 v2, -0x1

    iput v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    .line 2612
    .end local v7    # "grpIdArray":[I
    :cond_ba
    monitor-exit v1

    return v0

    .line 2613
    .end local v3    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v4    # "grpList":Ljava/lang/String;
    .end local v5    # "grpIds":[Ljava/lang/String;
    .end local v6    # "hasGroup":Z
    :catchall_bc
    move-exception v2

    goto :goto_e7

    .line 2559
    :catch_be
    move-exception v3

    .line 2560
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "MtkUsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeContactGroup: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 2562
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "index is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, p1, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2560
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2563
    monitor-exit v1

    return v2

    .line 2613
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_e7
    monitor-exit v1
    :try_end_e8
    .catchall {:try_start_82 .. :try_end_e8} :catchall_bc

    throw v2

    .line 2551
    :cond_e9
    :goto_e9
    return v0
.end method

.method public removeUsimAasById(II)Z
    .registers 15
    .param p1, "index"    # I
    .param p2, "pbrIndex"    # I

    .line 4188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeUsimAasById by id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",pbrIndex "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mPbrNeedNotify "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrNeedNotify:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4191
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->loadAasFiles()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2e

    return v1

    .line 4193
    :cond_2e
    move v0, p1

    .line 4194
    .local v0, "aasIndex":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    # getter for: Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v2

    .line 4196
    .local v2, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    if-eqz v2, :cond_f3

    const/16 v3, 0xc7

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_47

    goto/16 :goto_f3

    .line 4201
    :cond_47
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v3

    .line 4202
    .local v3, "efid":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeUsimAasById result,efid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4204
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v4, :cond_eb

    .line 4205
    const/16 v4, 0xa

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 4206
    .local v4, "msg":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->getUsimAasMaxNameLen()I

    move-result v5

    .line 4207
    .local v5, "len":I
    new-array v6, v5, [B

    .line 4209
    .local v6, "aasString":[B
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_76
    if-ge v7, v5, :cond_7e

    .line 4210
    const/4 v8, -0x1

    aput-byte v8, v6, v7

    .line 4209
    add-int/lit8 v7, v7, 0x1

    goto :goto_76

    .line 4213
    .end local v7    # "i":I
    :cond_7e
    iget-object v7, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasLock:Ljava/lang/Object;

    monitor-enter v7

    .line 4215
    :try_start_81
    iget-object v8, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v9, 0x3

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10, v0, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->deleteUPBEntry(IIILandroid/os/Message;)V
    :try_end_88
    .catchall {:try_start_81 .. :try_end_88} :catchall_e8

    .line 4217
    :try_start_88
    iget-object v8, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V
    :try_end_8d
    .catch Ljava/lang/InterruptedException; {:try_start_88 .. :try_end_8d} :catch_8e
    .catchall {:try_start_88 .. :try_end_8d} :catchall_e8

    .line 4220
    goto :goto_96

    .line 4218
    :catch_8e
    move-exception v8

    .line 4219
    .local v8, "e":Ljava/lang/InterruptedException;
    :try_start_8f
    const-string v9, "MtkUsimPhoneBookManager"

    const-string v11, "Interrupted Exception in removesimAasById"

    invoke-static {v9, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4221
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :goto_96
    monitor-exit v7
    :try_end_97
    .catchall {:try_start_8f .. :try_end_97} :catchall_e8

    .line 4223
    iget-object v7, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 4225
    .local v7, "ar":Landroid/os/AsyncResult;
    if-eqz v7, :cond_bb

    iget-object v8, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_a2

    goto :goto_bb

    .line 4235
    :cond_a2
    const-string v8, "MtkUsimPhoneBookManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "removeUsimAasById exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4236
    return v1

    .line 4226
    :cond_bb
    :goto_bb
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasForAnr:Ljava/util/ArrayList;

    .line 4227
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_e2

    .line 4228
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "remove aas done "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v0, -0x1

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4229
    add-int/lit8 v8, v0, -0x1

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_e7

    .line 4231
    :cond_e2
    const-string v8, "remove aas mAasForAnr is null "

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4233
    :goto_e7
    return v10

    .line 4221
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "ar":Landroid/os/AsyncResult;
    :catchall_e8
    move-exception v1

    :try_start_e9
    monitor-exit v7
    :try_end_ea
    .catchall {:try_start_e9 .. :try_end_ea} :catchall_e8

    throw v1

    .line 4239
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "len":I
    .end local v6    # "aasString":[B
    :cond_eb
    const-string v4, "MtkUsimPhoneBookManager"

    const-string v5, "removeUsimAasById-IccFileHandler is null"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4240
    return v1

    .line 4197
    .end local v3    # "efid":I
    :cond_f3
    :goto_f3
    const-string v3, "MtkUsimPhoneBookManager"

    const-string v4, "removeUsimAasById-PBR have no AAS EF file"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4198
    return v1
.end method

.method public declared-synchronized removeUsimGroupById(I)Z
    .registers 9
    .param p1, "nGasId"    # I

    monitor-enter p0

    .line 2060
    const/4 v0, 0x0

    .line 2062
    .local v0, "ret":Z
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeUsimGroupById nGasId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2064
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_a7

    .line 2065
    :try_start_19
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;
    :try_end_1b
    .catchall {:try_start_19 .. :try_end_1b} :catchall_a4

    if-eqz v2, :cond_86

    :try_start_1d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le p1, v2, :cond_24

    goto :goto_86

    .line 2068
    :cond_24
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/phb/UsimGroup;

    .line 2070
    .local v2, "uGas":Lcom/mediatek/internal/telephony/phb/UsimGroup;
    if-eqz v2, :cond_48

    .line 2071
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " removeUsimGroupById index is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/UsimGroup;->getRecordIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2074
    :cond_48
    if-eqz v2, :cond_7c

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/UsimGroup;->getAlphaTag()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7c

    .line 2075
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/16 v6, 0xd

    .line 2076
    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 2075
    invoke-virtual {v3, v4, v5, p1, v6}, Lcom/mediatek/internal/telephony/MtkRIL;->deleteUPBEntry(IIILandroid/os/Message;)V
    :try_end_5d
    .catchall {:try_start_1d .. :try_end_5d} :catchall_84

    .line 2079
    :try_start_5d
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_62
    .catch Ljava/lang/InterruptedException; {:try_start_5d .. :try_end_62} :catch_63
    .catchall {:try_start_5d .. :try_end_62} :catchall_84

    .line 2082
    goto :goto_6b

    .line 2080
    :catch_63
    move-exception v3

    .line 2081
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_64
    const-string v4, "MtkUsimPhoneBookManager"

    const-string v5, "Interrupted Exception in removeUsimGroupById"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2084
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_6b
    iget v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    if-nez v3, :cond_8d

    .line 2085
    const/4 v0, 0x1

    .line 2086
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/phb/UsimGroup;->setAlphaTag(Ljava/lang/String;)V

    .line 2087
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_8d

    .line 2090
    :cond_7c
    const-string v3, "MtkUsimPhoneBookManager"

    const-string v4, "removeUsimGroupById fail: this gas doesn\'t exist "

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catchall {:try_start_64 .. :try_end_83} :catchall_84

    goto :goto_8d

    .line 2093
    .end local v2    # "uGas":Lcom/mediatek/internal/telephony/phb/UsimGroup;
    :catchall_84
    move-exception v2

    goto :goto_a5

    .line 2066
    :cond_86
    :goto_86
    :try_start_86
    const-string v2, "MtkUsimPhoneBookManager"

    const-string v3, "removeUsimGroupById fail "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    :cond_8d
    :goto_8d
    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_86 .. :try_end_8e} :catchall_a4

    .line 2094
    :try_start_8e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeUsimGroupById result is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V
    :try_end_a2
    .catchall {:try_start_8e .. :try_end_a2} :catchall_a7

    .line 2095
    monitor-exit p0

    return v0

    .line 2093
    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;
    :catchall_a4
    move-exception v2

    :goto_a5
    :try_start_a5
    monitor-exit v1
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_a4

    :try_start_a6
    throw v2
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a7

    .line 2059
    .end local v0    # "ret":Z
    .end local p1    # "nGasId":I
    :catchall_a7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public reset()V
    .registers 6

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIsReset:Z

    .line 256
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 257
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    .line 258
    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    .line 259
    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    .line 260
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRefreshCache:Z

    .line 262
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailsForAdnRec:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 263
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSfiEfidTable:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 264
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 265
    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    .line 266
    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasForAnr:Ljava/util/ArrayList;

    .line 267
    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mExt1FileList:Ljava/util/ArrayList;

    .line 268
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSliceCount:I

    .line 269
    const/16 v2, 0x190

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecTable:[I

    .line 270
    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailInfo:[I

    .line 271
    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSneInfo:[I

    .line 272
    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrInfo:Ljava/util/ArrayList;

    .line 273
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3c
    const/16 v3, 0x8

    const/4 v4, -0x1

    if-ge v2, v3, :cond_48

    .line 274
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    aput v4, v3, v2

    .line 273
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 276
    .end local v2    # "i":I
    :cond_48
    iput v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecordSize:I

    .line 277
    iput v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrRecordSize:I

    .line 278
    iput v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbDone:I

    .line 279
    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnRecordSize:[I

    .line 280
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRefreshEmailInfo:Z

    .line 281
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRefreshAnrInfo:Z

    .line 282
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRefreshAdnInfo:Z

    .line 283
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 284
    :try_start_59
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 285
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_59 .. :try_end_5f} :catchall_78

    .line 286
    iput v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrNeedNotify:I

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reset finished, mPbrNeedNotify = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrNeedNotify:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 288
    return-void

    .line 285
    :catchall_78
    move-exception v1

    :try_start_79
    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw v1
.end method

.method public updateAdnAas(II)Z
    .registers 8
    .param p1, "adnIndex"    # I
    .param p2, "aasIndex"    # I

    .line 4379
    add-int/lit8 v0, p1, -0x1

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnFileSize:I

    div-int/2addr v0, v1

    .line 4380
    .local v0, "pbrRecNum":I
    add-int/lit8 v2, p1, -0x1

    rem-int/2addr v2, v1

    .line 4384
    .local v2, "index":I
    :try_start_8
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_12
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_12} :catch_26

    .line 4390
    .local v1, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    nop

    .line 4392
    invoke-virtual {v1, p2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setAasIndex(I)V

    .line 4394
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    const/4 v4, 0x3

    if-ge v3, v4, :cond_24

    .line 4395
    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAdditionalNumber(I)Ljava/lang/String;

    move-result-object v4

    .line 4396
    .local v4, "anr":Ljava/lang/String;
    invoke-virtual {p0, v4, p1, v3, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updateAnrByAdnIndex(Ljava/lang/String;IILcom/mediatek/internal/telephony/phb/MtkAdnRecord;)V

    .line 4394
    .end local v4    # "anr":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 4399
    .end local v3    # "i":I
    :cond_24
    const/4 v3, 0x1

    return v3

    .line 4385
    .end local v1    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :catch_26
    move-exception v1

    .line 4386
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateADNAAS: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 4388
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "index is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4386
    const-string v4, "MtkUsimPhoneBookManager"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4389
    const/4 v3, 0x0

    return v3
.end method

.method public updateAnrByAdnIndex(Ljava/lang/String;IILcom/mediatek/internal/telephony/phb/MtkAdnRecord;)V
    .registers 31
    .param p1, "anr"    # Ljava/lang/String;
    .param p2, "adnIndex"    # I
    .param p3, "anrIndex"    # I
    .param p4, "oldAdn"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    .line 2791
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v13, p4

    add-int/lit8 v0, v11, -0x1

    iget v3, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnFileSize:I

    div-int v14, v0, v3

    .line 2792
    .local v14, "pbrRecNum":I
    add-int/lit8 v0, v11, -0x1

    rem-int v15, v0, v3

    .line 2794
    .local v15, "anrRecNum":I
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_220

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_220

    .line 2798
    :cond_20
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    # getter for: Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v10

    .line 2800
    .local v10, "fileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    if-nez v10, :cond_34

    .line 2801
    const-string v0, "updateAnrByAdnIndex: No anr tag in pbr record 0"

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2802
    return-void

    .line 2805
    :cond_34
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_216

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_42

    move-object/from16 v20, v10

    goto/16 :goto_218

    .line 2810
    :cond_42
    mul-int/lit16 v0, v12, 0x100

    add-int/lit16 v0, v0, 0xc4

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 2812
    .local v9, "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    if-nez v9, :cond_64

    .line 2813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAnrByAdnIndex no efFile anrIndex: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2814
    return-void

    .line 2817
    :cond_64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAnrByAdnIndex begin effile "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2819
    const/4 v0, 0x0

    .line 2820
    .local v0, "oldAnr":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2822
    .local v3, "oldAas":I
    if-eqz v13, :cond_89

    .line 2823
    invoke-virtual {v13, v12}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAdditionalNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 2824
    invoke-virtual/range {p4 .. p4}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAasIndex()I

    move-result v3

    move-object/from16 v16, v0

    move/from16 v17, v3

    goto :goto_8d

    .line 2822
    :cond_89
    move-object/from16 v16, v0

    move/from16 v17, v3

    .line 2827
    .end local v0    # "oldAnr":Ljava/lang/String;
    .end local v3    # "oldAas":I
    .local v16, "oldAnr":Ljava/lang/String;
    .local v17, "oldAas":I
    :goto_8d
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->hasModemPhbEnhanceCapability(Lcom/android/internal/telephony/uicc/IccFileHandler;)Z

    move-result v0

    const/16 v3, 0x9

    if-nez v0, :cond_123

    .line 2828
    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v4

    .line 2829
    .local v4, "efid":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAnrByAdnIndex recId: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " EF_ANR id is "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2830
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2829
    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2832
    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getParentTag()I

    move-result v0

    const/16 v5, 0xa9

    if-ne v0, v5, :cond_cb

    .line 2833
    invoke-direct {v1, v2, v11, v9}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updateType2Anr(Ljava/lang/String;ILcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;)V

    .line 2834
    return-void

    .line 2839
    :cond_cb
    :try_start_cb
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v5, v11, -0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_d5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_cb .. :try_end_d5} :catch_fb

    .line 2845
    .local v0, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    nop

    .line 2847
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAasIndex()I

    move-result v5

    .line 2848
    .local v5, "aas":I
    iget v6, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAnrRecordSize:I

    invoke-direct {v1, v2, v6, v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->buildAnrRecord(Ljava/lang/String;II)[B

    move-result-object v6

    .line 2850
    .local v6, "data":[B
    if-eqz v6, :cond_f5

    .line 2851
    iget-object v7, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    add-int/lit8 v20, v15, 0x1

    const/16 v22, 0x0

    .line 2852
    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    .line 2851
    move-object/from16 v18, v7

    move/from16 v19, v4

    move-object/from16 v21, v6

    invoke-virtual/range {v18 .. v23}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 2854
    .end local v0    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v4    # "efid":I
    .end local v5    # "aas":I
    .end local v6    # "data":[B
    :cond_f5
    move-object/from16 v25, v9

    move-object/from16 v20, v10

    goto/16 :goto_1c1

    .line 2840
    .restart local v4    # "efid":I
    :catch_fb
    move-exception v0

    .line 2841
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "MtkUsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAnrByAdnIndex: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 2843
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "index is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v11, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2841
    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2844
    return-void

    .line 2858
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v4    # "efid":I
    :cond_123
    :try_start_123
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v4, v11, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_end_12d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_123 .. :try_end_12d} :catch_1eb

    move-object/from16 v18, v0

    .line 2864
    .local v18, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    nop

    .line 2866
    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAasIndex()I

    move-result v8

    .line 2867
    .local v8, "aas":I
    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 2869
    .local v7, "msg":Landroid/os/Message;
    iget-object v6, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2870
    const/4 v0, 0x0

    if-eqz v2, :cond_18e

    :try_start_13e
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_14f

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move/from16 v24, v8

    move-object/from16 v25, v9

    move-object/from16 v20, v10

    goto :goto_198

    .line 2880
    :cond_14f
    invoke-direct {v1, v2, v8}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->buildAnrRecordOptmz(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v19, v3

    .line 2881
    .local v19, "param":[Ljava/lang/String;
    iget-object v3, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v4, 0x0

    add-int/lit8 v5, v12, 0x1

    aget-object v0, v19, v0

    const/16 v20, 0x1

    aget-object v20, v19, v20

    const/16 v21, 0x2

    aget-object v21, v19, v21
    :try_end_164
    .catchall {:try_start_13e .. :try_end_164} :catchall_184

    move-object/from16 v22, v6

    move/from16 v6, p2

    move-object/from16 v23, v7

    .end local v7    # "msg":Landroid/os/Message;
    .local v23, "msg":Landroid/os/Message;
    move-object v7, v0

    move/from16 v24, v8

    .end local v8    # "aas":I
    .local v24, "aas":I
    move-object/from16 v8, v20

    move-object/from16 v25, v9

    .end local v9    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .local v25, "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    move-object/from16 v9, v21

    move-object/from16 v20, v10

    .end local v10    # "fileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .local v20, "fileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    move-object/from16 v10, v23

    :try_start_177
    invoke-virtual/range {v3 .. v10}, Lcom/mediatek/internal/telephony/MtkRIL;->editUPBEntry(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_17a
    .catchall {:try_start_177 .. :try_end_17a} :catchall_17d

    move-object/from16 v5, v23

    goto :goto_1ae

    .line 2889
    .end local v19    # "param":[Ljava/lang/String;
    :catchall_17d
    move-exception v0

    move-object/from16 v5, v23

    move-object/from16 v3, v25

    goto/16 :goto_1e9

    .end local v20    # "fileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v23    # "msg":Landroid/os/Message;
    .end local v24    # "aas":I
    .end local v25    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v7    # "msg":Landroid/os/Message;
    .restart local v8    # "aas":I
    .restart local v9    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v10    # "fileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    :catchall_184
    move-exception v0

    move-object/from16 v22, v6

    move/from16 v24, v8

    move-object/from16 v20, v10

    move-object v5, v7

    move-object v3, v9

    .end local v7    # "msg":Landroid/os/Message;
    .end local v8    # "aas":I
    .end local v9    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v10    # "fileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .restart local v20    # "fileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .restart local v23    # "msg":Landroid/os/Message;
    .restart local v24    # "aas":I
    .restart local v25    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    goto :goto_1e9

    .line 2870
    .end local v20    # "fileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v23    # "msg":Landroid/os/Message;
    .end local v24    # "aas":I
    .end local v25    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v7    # "msg":Landroid/os/Message;
    .restart local v8    # "aas":I
    .restart local v9    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v10    # "fileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    :cond_18e
    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move/from16 v24, v8

    move-object/from16 v25, v9

    move-object/from16 v20, v10

    .line 2871
    .end local v7    # "msg":Landroid/os/Message;
    .end local v8    # "aas":I
    .end local v9    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v10    # "fileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .restart local v20    # "fileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .restart local v23    # "msg":Landroid/os/Message;
    .restart local v24    # "aas":I
    .restart local v25    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :goto_198
    if-eqz v16, :cond_1e2

    :try_start_19a
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1a5

    move-object/from16 v5, v23

    move-object/from16 v3, v25

    goto :goto_1e6

    .line 2874
    :cond_1a5
    iget-object v3, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;
    :try_end_1a7
    .catchall {:try_start_19a .. :try_end_1a7} :catchall_1dc

    add-int/lit8 v4, v12, 0x1

    move-object/from16 v5, v23

    .end local v23    # "msg":Landroid/os/Message;
    .local v5, "msg":Landroid/os/Message;
    :try_start_1ab
    invoke-virtual {v3, v0, v4, v11, v5}, Lcom/mediatek/internal/telephony/MtkRIL;->deleteUPBEntry(IIILandroid/os/Message;)V
    :try_end_1ae
    .catchall {:try_start_1ab .. :try_end_1ae} :catchall_1d8

    .line 2885
    :goto_1ae
    :try_start_1ae
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1b3
    .catch Ljava/lang/InterruptedException; {:try_start_1ae .. :try_end_1b3} :catch_1b8
    .catchall {:try_start_1ae .. :try_end_1b3} :catchall_1b4

    .line 2888
    goto :goto_1c0

    .line 2889
    :catchall_1b4
    move-exception v0

    move-object/from16 v3, v25

    goto :goto_1e9

    .line 2886
    :catch_1b8
    move-exception v0

    .line 2887
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1b9
    const-string v3, "MtkUsimPhoneBookManager"

    const-string v4, "Interrupted Exception in updateAnrByAdnIndexOptmz"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2889
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1c0
    monitor-exit v22
    :try_end_1c1
    .catchall {:try_start_1b9 .. :try_end_1c1} :catchall_1d8

    .line 2891
    .end local v5    # "msg":Landroid/os/Message;
    .end local v18    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v24    # "aas":I
    :goto_1c1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAnrByAdnIndex end effile "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v25

    .end local v25    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .local v3, "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2892
    return-void

    .line 2889
    .end local v3    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v5    # "msg":Landroid/os/Message;
    .restart local v18    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v24    # "aas":I
    .restart local v25    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :catchall_1d8
    move-exception v0

    move-object/from16 v3, v25

    .end local v25    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v3    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    goto :goto_1e9

    .end local v3    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v5    # "msg":Landroid/os/Message;
    .restart local v23    # "msg":Landroid/os/Message;
    .restart local v25    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :catchall_1dc
    move-exception v0

    move-object/from16 v5, v23

    move-object/from16 v3, v25

    .end local v23    # "msg":Landroid/os/Message;
    .end local v25    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v3    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v5    # "msg":Landroid/os/Message;
    goto :goto_1e9

    .line 2871
    .end local v3    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v5    # "msg":Landroid/os/Message;
    .restart local v23    # "msg":Landroid/os/Message;
    .restart local v25    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    :cond_1e2
    move-object/from16 v5, v23

    move-object/from16 v3, v25

    .line 2872
    .end local v23    # "msg":Landroid/os/Message;
    .end local v25    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v3    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v5    # "msg":Landroid/os/Message;
    :goto_1e6
    :try_start_1e6
    monitor-exit v22

    return-void

    .line 2889
    :catchall_1e8
    move-exception v0

    :goto_1e9
    monitor-exit v22
    :try_end_1ea
    .catchall {:try_start_1e6 .. :try_end_1ea} :catchall_1e8

    throw v0

    .line 2859
    .end local v3    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v5    # "msg":Landroid/os/Message;
    .end local v18    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v20    # "fileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .end local v24    # "aas":I
    .restart local v9    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v10    # "fileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    :catch_1eb
    move-exception v0

    move-object v3, v9

    move-object/from16 v20, v10

    .line 2860
    .end local v9    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v10    # "fileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v3    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .restart local v20    # "fileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    const-string v4, "MtkUsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAnrByAdnIndexOptmz: mPhoneBookRecords IndexOutOfBoundsException size() is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 2861
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "index is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v11, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2860
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2863
    return-void

    .line 2805
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v3    # "anrFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v16    # "oldAnr":Ljava/lang/String;
    .end local v17    # "oldAas":I
    .end local v20    # "fileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .restart local v10    # "fileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    :cond_216
    move-object/from16 v20, v10

    .line 2806
    .end local v10    # "fileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    .restart local v20    # "fileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    :goto_218
    const-string v0, "MtkUsimPhoneBookManager"

    const-string v3, "updateAnrByAdnIndex: mPhoneBookRecords is empty"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2807
    return-void

    .line 2795
    .end local v20    # "fileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    :cond_220
    :goto_220
    return-void
.end method

.method public updateContactToGroups(I[I)Z
    .registers 12
    .param p1, "adnIndex"    # I
    .param p2, "grpIdList"    # [I

    .line 2378
    const/4 v0, 0x0

    .line 2380
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_10a

    if-lez p1, :cond_10a

    .line 2381
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt p1, v1, :cond_10a

    if-nez p2, :cond_12

    goto/16 :goto_10a

    .line 2386
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateContactToGroups begin grpIdList is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to grp list count "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2389
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2390
    :try_start_32
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    .line 2392
    .local v3, "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    if-eqz v3, :cond_e8

    .line 2393
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " updateContactToGroups the adn index is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getRecId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " old grpList is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2394
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2393
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2396
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x7

    aget v4, v4, v5

    .line 2398
    .local v4, "grpCount":I
    array-length v5, p2

    if-le v5, v4, :cond_73

    .line 2399
    const-string v5, "MtkUsimPhoneBookManager"

    const-string v6, "updateContactToGroups length of grpIdList > grpCount."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    monitor-exit v1

    return v2

    .line 2403
    :cond_73
    new-array v5, v4, [I

    .line 2405
    .local v5, "grpIdArray":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_76
    if-ge v6, v4, :cond_aa

    .line 2406
    array-length v7, p2

    if-ge v6, v7, :cond_7e

    aget v7, p2, v6

    goto :goto_7f

    :cond_7e
    move v7, v2

    :goto_7f
    aput v7, v5, v6

    .line 2407
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateContactToGroups i:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",grpIdArray["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v5, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2405
    add-int/lit8 v6, v6, 0x1

    goto :goto_76

    .line 2410
    .end local v6    # "i":I
    :cond_aa
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v6, 0xc

    .line 2411
    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 2410
    invoke-virtual {v2, p1, v5, v6}, Lcom/mediatek/internal/telephony/MtkRIL;->writeUPBGrpEntry(I[ILandroid/os/Message;)V
    :try_end_b5
    .catchall {:try_start_32 .. :try_end_b5} :catchall_107

    .line 2413
    :try_start_b5
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_ba
    .catch Ljava/lang/InterruptedException; {:try_start_b5 .. :try_end_ba} :catch_bb
    .catchall {:try_start_b5 .. :try_end_ba} :catchall_107

    .line 2416
    goto :goto_c3

    .line 2414
    :catch_bb
    move-exception v2

    .line 2415
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_bc
    const-string v6, "MtkUsimPhoneBookManager"

    const-string v7, "Interrupted Exception in updateContactToGroups"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2418
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_c3
    iget v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    if-nez v2, :cond_e8

    .line 2419
    const/4 v0, 0x1

    .line 2420
    add-int/lit8 v2, p1, -0x1

    invoke-direct {p0, v2, p1, v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updatePhoneAdnRecordWithGrpByIndex(II[I)V

    .line 2421
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " updateContactToGroups the adn index is "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2422
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getRecId()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2421
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2423
    const/4 v2, -0x1

    iput v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    .line 2426
    .end local v3    # "rec":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v4    # "grpCount":I
    .end local v5    # "grpIdArray":[I
    :cond_e8
    monitor-exit v1
    :try_end_e9
    .catchall {:try_start_bc .. :try_end_e9} :catchall_107

    .line 2428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateContactToGroups end grpIdList is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to grp list count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2430
    return v0

    .line 2426
    :catchall_107
    move-exception v2

    :try_start_108
    monitor-exit v1
    :try_end_109
    .catchall {:try_start_108 .. :try_end_109} :catchall_107

    throw v2

    .line 2382
    :cond_10a
    :goto_10a
    const-string v1, "MtkUsimPhoneBookManager"

    const-string v3, "updateContactToGroups no records or invalid index."

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2383
    return v2
.end method

.method public updateEmailsByAdnIndex([Ljava/lang/String;ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;)I
    .registers 29
    .param p1, "emails"    # [Ljava/lang/String;
    .param p2, "adnIndex"    # I
    .param p3, "oldAdn"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    .line 3201
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v10, p2

    add-int/lit8 v0, v10, -0x1

    iget v3, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnFileSize:I

    div-int v11, v0, v3

    .line 3202
    .local v11, "pbrRecNum":I
    add-int/lit8 v0, v10, -0x1

    rem-int v12, v0, v3

    .line 3205
    .local v12, "adnRecNum":I
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v13, 0x0

    if-eqz v0, :cond_1ae

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1d

    goto/16 :goto_1ae

    .line 3209
    :cond_1d
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    # getter for: Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v14

    .line 3211
    .local v14, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    if-eqz v14, :cond_1ad

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_33

    goto/16 :goto_1ad

    .line 3215
    :cond_33
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_1ac

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3f

    goto/16 :goto_1ac

    .line 3219
    :cond_3f
    const/16 v0, 0xca

    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 3220
    .local v15, "efFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    if-nez v15, :cond_50

    .line 3221
    const-string v0, "updateEmailsByAdnIndex: No email tag in pbr record 0"

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3222
    return v13

    .line 3225
    :cond_50
    const/4 v0, 0x0

    .line 3226
    .local v0, "oldEmails":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 3228
    .local v3, "oldEmail":Ljava/lang/String;
    if-eqz p3, :cond_5a

    .line 3229
    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto :goto_5b

    .line 3228
    :cond_5a
    move-object v9, v0

    .line 3232
    .end local v0    # "oldEmails":[Ljava/lang/String;
    .local v9, "oldEmails":[Ljava/lang/String;
    :goto_5b
    if-eqz v9, :cond_6c

    array-length v0, v9

    if-eqz v0, :cond_6c

    aget-object v0, v9, v13

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6c

    .line 3233
    aget-object v3, v9, v13

    move-object v8, v3

    goto :goto_6d

    .line 3236
    :cond_6c
    move-object v8, v3

    .end local v3    # "oldEmail":Ljava/lang/String;
    .local v8, "oldEmail":Ljava/lang/String;
    :goto_6d
    invoke-virtual {v15}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v22

    .line 3237
    .local v22, "efid":I
    invoke-virtual {v15}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getParentTag()I

    move-result v0

    const/16 v3, 0xa9

    const/4 v4, 0x1

    if-ne v0, v3, :cond_7c

    move v0, v4

    goto :goto_7d

    :cond_7c
    move v0, v13

    :goto_7d
    move v6, v0

    .line 3238
    .local v6, "emailType2":Z
    invoke-virtual {v15}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getIndex()I

    move-result v23

    .line 3240
    .local v23, "emailType2Index":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateEmailsByAdnIndex: pbrrecNum is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " EF_EMAIL id is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3241
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3240
    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 3243
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->hasModemPhbEnhanceCapability(Lcom/android/internal/telephony/uicc/IccFileHandler;)Z

    move-result v0

    const/16 v3, 0x8

    if-nez v0, :cond_fd

    .line 3244
    if-eqz v6, :cond_bb

    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    if-eqz v0, :cond_bb

    .line 3245
    invoke-direct {v1, v2, v10, v15}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updateType2Email([Ljava/lang/String;ILcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;)I

    move-result v0

    return v0

    .line 3247
    :cond_bb
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateEmailsByAdnIndex file: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3249
    if-eqz v2, :cond_d8

    array-length v0, v2

    if-gtz v0, :cond_d5

    goto :goto_d8

    :cond_d5
    aget-object v0, v2, v13

    goto :goto_d9

    :cond_d8
    :goto_d8
    const/4 v0, 0x0

    .line 3251
    .local v0, "email":Ljava/lang/String;
    :goto_d9
    iget v4, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mEmailRecordSize:I

    if-gtz v4, :cond_e0

    .line 3252
    const/16 v3, -0x32

    return v3

    .line 3255
    :cond_e0
    invoke-direct {v1, v0, v10, v4, v6}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->buildEmailRecord(Ljava/lang/String;IIZ)[B

    move-result-object v4

    .line 3257
    .local v4, "data":[B
    if-nez v4, :cond_e9

    .line 3258
    const/16 v3, -0x28

    return v3

    .line 3261
    :cond_e9
    iget-object v5, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    add-int/lit8 v18, v12, 0x1

    const/16 v20, 0x0

    .line 3262
    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    .line 3261
    move-object/from16 v16, v5

    move/from16 v17, v22

    move-object/from16 v19, v4

    invoke-virtual/range {v16 .. v21}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 3263
    return v13

    .line 3266
    .end local v0    # "email":Ljava/lang/String;
    .end local v4    # "data":[B
    :cond_fd
    const/4 v5, 0x1

    .line 3267
    .local v5, "emailIndex":I
    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 3269
    .local v3, "msg":Landroid/os/Message;
    iget-object v7, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 3270
    if-eqz v2, :cond_174

    :try_start_107
    array-length v0, v2

    if-eqz v0, :cond_174

    aget-object v0, v2, v13

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_120

    move-object/from16 v18, v3

    move/from16 v19, v5

    move/from16 v20, v6

    move-object/from16 v16, v7

    move-object/from16 v21, v8

    move-object/from16 v17, v9

    goto/16 :goto_180

    .line 3277
    :cond_120
    aget-object v0, v2, v13

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_126
    .catchall {:try_start_107 .. :try_end_126} :catchall_165

    if-eqz v0, :cond_13a

    .line 3278
    :try_start_128
    monitor-exit v7
    :try_end_129
    .catchall {:try_start_128 .. :try_end_129} :catchall_12a

    return v13

    .line 3289
    :catchall_12a
    move-exception v0

    move/from16 v20, v6

    move-object/from16 v16, v7

    move-object/from16 v21, v8

    move-object/from16 v17, v9

    move/from16 v24, v5

    move-object v5, v3

    move/from16 v3, v24

    goto/16 :goto_1aa

    .line 3280
    :cond_13a
    :try_start_13a
    aget-object v0, v2, v13

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->encodeToUcs2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_140
    .catchall {:try_start_13a .. :try_end_140} :catchall_165

    move-object/from16 v16, v7

    move-object v7, v0

    .line 3281
    .local v7, "temp":Ljava/lang/String;
    :try_start_143
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;
    :try_end_145
    .catchall {:try_start_143 .. :try_end_145} :catchall_161

    const/4 v4, 0x1

    const/16 v17, 0x0

    move-object/from16 v18, v3

    .end local v3    # "msg":Landroid/os/Message;
    .local v18, "msg":Landroid/os/Message;
    move-object v3, v0

    move/from16 v19, v5

    .end local v5    # "emailIndex":I
    .local v19, "emailIndex":I
    move/from16 v20, v6

    .end local v6    # "emailType2":Z
    .local v20, "emailType2":Z
    move/from16 v6, p2

    move-object/from16 v21, v8

    .end local v8    # "oldEmail":Ljava/lang/String;
    .local v21, "oldEmail":Ljava/lang/String;
    move-object/from16 v8, v17

    move-object/from16 v17, v9

    .end local v9    # "oldEmails":[Ljava/lang/String;
    .local v17, "oldEmails":[Ljava/lang/String;
    move-object/from16 v9, v18

    :try_start_159
    invoke-virtual/range {v3 .. v9}, Lcom/mediatek/internal/telephony/MtkRIL;->editUPBEntry(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    move-object/from16 v5, v18

    move/from16 v3, v19

    goto :goto_193

    .line 3289
    .end local v7    # "temp":Ljava/lang/String;
    .end local v17    # "oldEmails":[Ljava/lang/String;
    .end local v18    # "msg":Landroid/os/Message;
    .end local v19    # "emailIndex":I
    .end local v20    # "emailType2":Z
    .end local v21    # "oldEmail":Ljava/lang/String;
    .restart local v3    # "msg":Landroid/os/Message;
    .restart local v5    # "emailIndex":I
    .restart local v6    # "emailType2":Z
    .restart local v8    # "oldEmail":Ljava/lang/String;
    .restart local v9    # "oldEmails":[Ljava/lang/String;
    :catchall_161
    move-exception v0

    move/from16 v20, v6

    goto :goto_16a

    :catchall_165
    move-exception v0

    move/from16 v20, v6

    move-object/from16 v16, v7

    :goto_16a
    move-object/from16 v21, v8

    move-object/from16 v17, v9

    move/from16 v24, v5

    move-object v5, v3

    move/from16 v3, v24

    .end local v3    # "msg":Landroid/os/Message;
    .end local v5    # "emailIndex":I
    .end local v6    # "emailType2":Z
    .end local v8    # "oldEmail":Ljava/lang/String;
    .end local v9    # "oldEmails":[Ljava/lang/String;
    .restart local v17    # "oldEmails":[Ljava/lang/String;
    .restart local v18    # "msg":Landroid/os/Message;
    .restart local v19    # "emailIndex":I
    .restart local v20    # "emailType2":Z
    .restart local v21    # "oldEmail":Ljava/lang/String;
    goto :goto_1aa

    .line 3270
    .end local v17    # "oldEmails":[Ljava/lang/String;
    .end local v18    # "msg":Landroid/os/Message;
    .end local v19    # "emailIndex":I
    .end local v20    # "emailType2":Z
    .end local v21    # "oldEmail":Ljava/lang/String;
    .restart local v3    # "msg":Landroid/os/Message;
    .restart local v5    # "emailIndex":I
    .restart local v6    # "emailType2":Z
    .restart local v8    # "oldEmail":Ljava/lang/String;
    .restart local v9    # "oldEmails":[Ljava/lang/String;
    :cond_174
    move-object/from16 v18, v3

    move/from16 v19, v5

    move/from16 v20, v6

    move-object/from16 v16, v7

    move-object/from16 v21, v8

    move-object/from16 v17, v9

    .line 3271
    .end local v3    # "msg":Landroid/os/Message;
    .end local v5    # "emailIndex":I
    .end local v6    # "emailType2":Z
    .end local v8    # "oldEmail":Ljava/lang/String;
    .end local v9    # "oldEmails":[Ljava/lang/String;
    .restart local v17    # "oldEmails":[Ljava/lang/String;
    .restart local v18    # "msg":Landroid/os/Message;
    .restart local v19    # "emailIndex":I
    .restart local v20    # "emailType2":Z
    .restart local v21    # "oldEmail":Ljava/lang/String;
    :goto_180
    if-nez v21, :cond_18a

    .line 3272
    monitor-exit v16
    :try_end_183
    .catchall {:try_start_159 .. :try_end_183} :catchall_184

    return v13

    .line 3289
    :catchall_184
    move-exception v0

    move-object/from16 v5, v18

    move/from16 v3, v19

    goto :goto_1aa

    .line 3275
    :cond_18a
    :try_start_18a
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;
    :try_end_18c
    .catchall {:try_start_18a .. :try_end_18c} :catchall_1a5

    move-object/from16 v5, v18

    move/from16 v3, v19

    .end local v18    # "msg":Landroid/os/Message;
    .end local v19    # "emailIndex":I
    .local v3, "emailIndex":I
    .local v5, "msg":Landroid/os/Message;
    :try_start_190
    invoke-virtual {v0, v4, v3, v10, v5}, Lcom/mediatek/internal/telephony/MtkRIL;->deleteUPBEntry(IIILandroid/os/Message;)V
    :try_end_193
    .catchall {:try_start_190 .. :try_end_193} :catchall_1a3

    .line 3285
    :goto_193
    :try_start_193
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_198
    .catch Ljava/lang/InterruptedException; {:try_start_193 .. :try_end_198} :catch_199
    .catchall {:try_start_193 .. :try_end_198} :catchall_1a3

    .line 3288
    goto :goto_1a1

    .line 3286
    :catch_199
    move-exception v0

    .line 3287
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_19a
    const-string v4, "MtkUsimPhoneBookManager"

    const-string v6, "Interrupted Exception in updateEmailsByAdnIndex"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3289
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1a1
    monitor-exit v16

    .line 3290
    return v13

    .line 3289
    :catchall_1a3
    move-exception v0

    goto :goto_1aa

    .end local v3    # "emailIndex":I
    .end local v5    # "msg":Landroid/os/Message;
    .restart local v18    # "msg":Landroid/os/Message;
    .restart local v19    # "emailIndex":I
    :catchall_1a5
    move-exception v0

    move-object/from16 v5, v18

    move/from16 v3, v19

    .end local v18    # "msg":Landroid/os/Message;
    .end local v19    # "emailIndex":I
    .restart local v3    # "emailIndex":I
    .restart local v5    # "msg":Landroid/os/Message;
    :goto_1aa
    monitor-exit v16
    :try_end_1ab
    .catchall {:try_start_19a .. :try_end_1ab} :catchall_1a3

    throw v0

    .line 3216
    .end local v3    # "emailIndex":I
    .end local v5    # "msg":Landroid/os/Message;
    .end local v15    # "efFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v17    # "oldEmails":[Ljava/lang/String;
    .end local v20    # "emailType2":Z
    .end local v21    # "oldEmail":Ljava/lang/String;
    .end local v22    # "efid":I
    .end local v23    # "emailType2Index":I
    :cond_1ac
    :goto_1ac
    return v13

    .line 3212
    :cond_1ad
    :goto_1ad
    return v13

    .line 3206
    .end local v14    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    :cond_1ae
    :goto_1ae
    return v13
.end method

.method public updateSneByAdnIndex(Ljava/lang/String;ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;)I
    .registers 23
    .param p1, "sne"    # Ljava/lang/String;
    .param p2, "adnIndex"    # I
    .param p3, "oldAdn"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    .line 4602
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v10, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSneByAdnIndex begin, adnIndex "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4604
    add-int/lit8 v0, v10, -0x1

    iget v3, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAdnFileSize:I

    div-int v11, v0, v3

    .line 4605
    .local v11, "pbrRecNum":I
    add-int/lit8 v0, v10, -0x1

    rem-int v12, v0, v3

    .line 4607
    .local v12, "nIapRecNum":I
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v3, -0x1

    if-eqz v0, :cond_11c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_31

    goto/16 :goto_11c

    .line 4611
    :cond_31
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    .line 4612
    .local v13, "msg":Landroid/os/Message;
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    # getter for: Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v14

    .line 4614
    .local v14, "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    if-eqz v14, :cond_116

    const/16 v0, 0xc3

    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4f

    goto/16 :goto_116

    .line 4619
    :cond_4f
    iget-object v4, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v4, :cond_115

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5b

    goto/16 :goto_115

    .line 4623
    :cond_5b
    const/4 v3, 0x0

    .line 4625
    .local v3, "oldSne":Ljava/lang/String;
    if-eqz p3, :cond_64

    .line 4626
    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getSne()Ljava/lang/String;

    move-result-object v3

    move-object v15, v3

    goto :goto_65

    .line 4625
    :cond_64
    move-object v15, v3

    .line 4629
    .end local v3    # "oldSne":Ljava/lang/String;
    .local v15, "oldSne":Ljava/lang/String;
    :goto_65
    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    .line 4630
    .local v16, "sneFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->getEfid()I

    move-result v17

    .line 4631
    .local v17, "efid":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSneByAdnIndex: EF_SNE id is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4632
    const/4 v9, 0x1

    .line 4634
    .local v9, "efIndex":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSneByAdnIndex: efIndex is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4636
    iget-object v8, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 4637
    const/4 v0, 0x0

    if-eqz v2, :cond_d8

    :try_start_a8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_b2

    move-object/from16 v18, v8

    move v2, v9

    goto :goto_db

    .line 4644
    :cond_b2
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_b6
    .catchall {:try_start_a8 .. :try_end_b6} :catchall_d3

    if-eqz v3, :cond_bf

    .line 4645
    :try_start_b8
    monitor-exit v8
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_ba

    return v0

    .line 4657
    :catchall_ba
    move-exception v0

    move-object/from16 v18, v8

    move v2, v9

    goto :goto_113

    .line 4647
    :cond_bf
    :try_start_bf
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->encodeToUcs2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4649
    .local v7, "temp":Ljava/lang/String;
    iget-object v3, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;
    :try_end_c5
    .catchall {:try_start_bf .. :try_end_c5} :catchall_d3

    const/4 v4, 0x2

    const/4 v0, 0x0

    move v5, v9

    move/from16 v6, p2

    move-object/from16 v18, v8

    move-object v8, v0

    move v2, v9

    .end local v9    # "efIndex":I
    .local v2, "efIndex":I
    move-object v9, v13

    :try_start_cf
    invoke-virtual/range {v3 .. v9}, Lcom/mediatek/internal/telephony/MtkRIL;->editUPBEntry(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_ea

    .line 4657
    .end local v2    # "efIndex":I
    .end local v7    # "temp":Ljava/lang/String;
    .restart local v9    # "efIndex":I
    :catchall_d3
    move-exception v0

    move-object/from16 v18, v8

    move v2, v9

    .end local v9    # "efIndex":I
    .restart local v2    # "efIndex":I
    goto :goto_113

    .line 4637
    .end local v2    # "efIndex":I
    .restart local v9    # "efIndex":I
    :cond_d8
    move-object/from16 v18, v8

    move v2, v9

    .line 4638
    .end local v9    # "efIndex":I
    .restart local v2    # "efIndex":I
    :goto_db
    if-eqz v15, :cond_110

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_e4

    goto :goto_110

    .line 4642
    :cond_e4
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2, v10, v13}, Lcom/mediatek/internal/telephony/MtkRIL;->deleteUPBEntry(IIILandroid/os/Message;)V
    :try_end_ea
    .catchall {:try_start_cf .. :try_end_ea} :catchall_112

    .line 4653
    :goto_ea
    :try_start_ea
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_ef
    .catch Ljava/lang/InterruptedException; {:try_start_ea .. :try_end_ef} :catch_f0
    .catchall {:try_start_ea .. :try_end_ef} :catchall_112

    .line 4656
    goto :goto_f8

    .line 4654
    :catch_f0
    move-exception v0

    .line 4655
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_f1
    const-string v3, "MtkUsimPhoneBookManager"

    const-string v4, "Interrupted Exception in updateSneByAdnIndex"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4657
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_f8
    monitor-exit v18
    :try_end_f9
    .catchall {:try_start_f1 .. :try_end_f9} :catchall_112

    .line 4658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSneByAdnIndex end, adnIndex "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4659
    iget v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    return v0

    .line 4639
    :cond_110
    :goto_110
    :try_start_110
    monitor-exit v18

    return v0

    .line 4657
    :catchall_112
    move-exception v0

    :goto_113
    monitor-exit v18
    :try_end_114
    .catchall {:try_start_110 .. :try_end_114} :catchall_112

    throw v0

    .line 4620
    .end local v2    # "efIndex":I
    .end local v15    # "oldSne":Ljava/lang/String;
    .end local v16    # "sneFile":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    .end local v17    # "efid":I
    :cond_115
    :goto_115
    return v3

    .line 4615
    :cond_116
    :goto_116
    const-string v0, "updateSneByAdnIndex: No SNE tag in pbr file 0"

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4616
    return v3

    .line 4608
    .end local v13    # "msg":Landroid/os/Message;
    .end local v14    # "files":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;>;"
    :cond_11c
    :goto_11c
    return v3
.end method

.method public updateUsimAas(IILjava/lang/String;)Z
    .registers 26
    .param p1, "index"    # I
    .param p2, "pbrIndex"    # I
    .param p3, "aasName"    # Ljava/lang/String;

    .line 4313
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateUsimAas index "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",pbrIndex "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",aasName "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",mPbrNeedNotify "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPbrNeedNotify:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4316
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->loadAasFiles()Z

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_3e

    return v5

    .line 4318
    :cond_3e
    iget-object v6, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasForAnr:Ljava/util/ArrayList;

    .line 4320
    .local v6, "map":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-lez v2, :cond_127

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v2, v0, :cond_4a

    goto/16 :goto_127

    .line 4325
    :cond_4a
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 4326
    .local v7, "aas":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateUsimAas old aas "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4328
    if-eqz v3, :cond_122

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_71

    goto/16 :goto_122

    .line 4331
    :cond_71
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->getUsimAasMaxNameLen()I

    move-result v8

    .line 4332
    .local v8, "limit":I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v9

    .line 4334
    .local v9, "len":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateUsimAas aas limit "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4336
    if-le v9, v8, :cond_90

    .line 4337
    return v5

    .line 4340
    :cond_90
    const/4 v10, 0x0

    .line 4341
    .local v10, "offset":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateUsimAas offset "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4342
    add-int v18, v2, v10

    .line 4343
    .local v18, "aasIndex":I
    invoke-direct {v1, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->encodeToUcs2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 4344
    .local v19, "temp":Ljava/lang/String;
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    .line 4346
    .local v15, "msg":Landroid/os/Message;
    iget-object v14, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasLock:Ljava/lang/Object;

    monitor-enter v14

    .line 4347
    :try_start_b4
    iget-object v11, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;
    :try_end_b6
    .catchall {:try_start_b4 .. :try_end_b6} :catchall_11a

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v20, v14

    move/from16 v14, v18

    move-object/from16 v21, v15

    .end local v15    # "msg":Landroid/os/Message;
    .local v21, "msg":Landroid/os/Message;
    move-object/from16 v15, v19

    move-object/from16 v17, v21

    :try_start_c4
    invoke-virtual/range {v11 .. v17}, Lcom/mediatek/internal/telephony/MtkRIL;->editUPBEntry(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_c7
    .catchall {:try_start_c4 .. :try_end_c7} :catchall_116

    .line 4349
    :try_start_c7
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_cc
    .catch Ljava/lang/InterruptedException; {:try_start_c7 .. :try_end_cc} :catch_d1
    .catchall {:try_start_c7 .. :try_end_cc} :catchall_cd

    .line 4352
    goto :goto_d9

    .line 4353
    :catchall_cd
    move-exception v0

    move-object/from16 v11, v21

    goto :goto_11e

    .line 4350
    :catch_d1
    move-exception v0

    .line 4351
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_d2
    const-string v11, "MtkUsimPhoneBookManager"

    const-string v12, "Interrupted Exception in updateUsimAas"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4353
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_d9
    monitor-exit v20
    :try_end_da
    .catchall {:try_start_d2 .. :try_end_da} :catchall_116

    .line 4355
    move-object/from16 v11, v21

    .end local v21    # "msg":Landroid/os/Message;
    .local v11, "msg":Landroid/os/Message;
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 4357
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_100

    iget-object v12, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v12, :cond_e7

    goto :goto_100

    .line 4367
    :cond_e7
    const-string v12, "MtkUsimPhoneBookManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateUsimAas exception "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4368
    return v5

    .line 4358
    :cond_100
    :goto_100
    iget-object v5, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mAasForAnr:Ljava/util/ArrayList;

    .line 4359
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v5, :cond_10f

    .line 4360
    add-int/lit8 v12, v2, -0x1

    invoke-virtual {v5, v12, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4361
    const-string v12, "updateUsimAas update mAasForAnr done"

    invoke-direct {v1, v12}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    goto :goto_114

    .line 4363
    :cond_10f
    const-string v12, "updateUsimAas mAasForAnr is null"

    invoke-direct {v1, v12}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 4365
    :goto_114
    const/4 v12, 0x1

    return v12

    .line 4353
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "msg":Landroid/os/Message;
    .restart local v21    # "msg":Landroid/os/Message;
    :catchall_116
    move-exception v0

    move-object/from16 v11, v21

    .end local v21    # "msg":Landroid/os/Message;
    .restart local v11    # "msg":Landroid/os/Message;
    goto :goto_11e

    .end local v11    # "msg":Landroid/os/Message;
    .restart local v15    # "msg":Landroid/os/Message;
    :catchall_11a
    move-exception v0

    move-object/from16 v20, v14

    move-object v11, v15

    .end local v15    # "msg":Landroid/os/Message;
    .restart local v11    # "msg":Landroid/os/Message;
    :goto_11e
    :try_start_11e
    monitor-exit v20
    :try_end_11f
    .catchall {:try_start_11e .. :try_end_11f} :catchall_120

    throw v0

    :catchall_120
    move-exception v0

    goto :goto_11e

    .line 4329
    .end local v8    # "limit":I
    .end local v9    # "len":I
    .end local v10    # "offset":I
    .end local v11    # "msg":Landroid/os/Message;
    .end local v18    # "aasIndex":I
    .end local v19    # "temp":Ljava/lang/String;
    :cond_122
    :goto_122
    invoke-virtual/range {p0 .. p2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->removeUsimAasById(II)Z

    move-result v0

    return v0

    .line 4321
    .end local v7    # "aas":Ljava/lang/String;
    :cond_127
    :goto_127
    const-string v0, "MtkUsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateUsimAas not found aas index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4322
    return v5
.end method

.method public declared-synchronized updateUsimGroup(ILjava/lang/String;)I
    .registers 13
    .param p1, "nGasId"    # I
    .param p2, "grpName"    # Ljava/lang/String;

    monitor-enter p0

    .line 2188
    const/4 v0, -0x1

    .line 2189
    .local v0, "ret":I
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateUsimGroup nGasId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 2191
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_90

    .line 2192
    const/4 v2, -0x1

    :try_start_1a
    iput v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    .line 2194
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    if-eqz v2, :cond_4b

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le p1, v2, :cond_27

    goto :goto_4b

    .line 2196
    :cond_27
    if-eqz p2, :cond_52

    .line 2197
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->encodeToUcs2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2198
    .local v7, "temp":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/16 v2, 0xd

    .line 2199
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 2198
    move v6, p1

    invoke-virtual/range {v3 .. v9}, Lcom/mediatek/internal/telephony/MtkRIL;->editUPBEntry(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_3c
    .catchall {:try_start_1a .. :try_end_3c} :catchall_8b

    .line 2202
    :try_start_3c
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_41
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_41} :catch_42
    .catchall {:try_start_3c .. :try_end_41} :catchall_8b

    .line 2205
    goto :goto_52

    .line 2203
    :catch_42
    move-exception v2

    .line 2204
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_43
    const-string v3, "MtkUsimPhoneBookManager"

    const-string v4, "Interrupted Exception in updateUsimGroup"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 2195
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v7    # "temp":Ljava/lang/String;
    :cond_4b
    :goto_4b
    const-string v2, "MtkUsimPhoneBookManager"

    const-string v3, "updateUsimGroup fail "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    :cond_52
    :goto_52
    iget v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mResult:I

    if-nez v2, :cond_87

    .line 2209
    move v0, p1

    .line 2210
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/phb/UsimGroup;

    .line 2211
    .local v2, "uGasEntry":Lcom/mediatek/internal/telephony/phb/UsimGroup;
    if-eqz v2, :cond_7f

    .line 2212
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateUsimGroup index is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/phb/UsimGroup;->getRecordIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2213
    invoke-virtual {v2, p2}, Lcom/mediatek/internal/telephony/phb/UsimGroup;->setAlphaTag(Ljava/lang/String;)V

    goto :goto_86

    .line 2215
    :cond_7f
    const-string v3, "MtkUsimPhoneBookManager"

    const-string v4, "updateUsimGroup the entry doesn\'t exist "

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2217
    .end local v2    # "uGasEntry":Lcom/mediatek/internal/telephony/phb/UsimGroup;
    :goto_86
    goto :goto_88

    .line 2218
    :cond_87
    move v0, v2

    .line 2220
    :goto_88
    monitor-exit v1
    :try_end_89
    .catchall {:try_start_43 .. :try_end_89} :catchall_8b

    .line 2222
    monitor-exit p0

    return v0

    .line 2220
    :catchall_8b
    move-exception v2

    :goto_8c
    :try_start_8c
    monitor-exit v1
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8e

    :try_start_8d
    throw v2
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_90

    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;
    :catchall_8e
    move-exception v2

    goto :goto_8c

    .line 2187
    .end local v0    # "ret":I
    .end local p1    # "nGasId":I
    .end local p2    # "grpName":Ljava/lang/String;
    :catchall_90
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateUsimPhonebookRecordsList(ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "newAdn"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    .line 3454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateUsimPhonebookRecordsList update the "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "th record."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V

    .line 3456
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_40

    .line 3457
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    .line 3458
    .local v0, "oldAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    if-eqz v0, :cond_38

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 3459
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setGrpIds(Ljava/lang/String;)V

    .line 3461
    :cond_38
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3462
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mRefreshAdnInfo:Z

    .line 3464
    .end local v0    # "oldAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :cond_40
    return-void
.end method
