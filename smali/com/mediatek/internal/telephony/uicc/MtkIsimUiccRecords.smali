.class public Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;
.super Lcom/android/internal/telephony/uicc/IsimUiccRecords;
.source "MtkIsimUiccRecords.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/uicc/MtkIsimRecords;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords$MtkEfIsimIstLoaded;
    }
.end annotation


# static fields
.field private static final EVENT_GET_GBABP_DONE:I = 0xc8

.field private static final EVENT_GET_GBANL_DONE:I = 0xc9

.field private static final EVENT_GET_PSISMSC_DONE:I = 0xca

.field protected static final LOG_TAG:Ljava/lang/String; = "MtkIsimUiccRecords"


# instance fields
.field mEfGbanlList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field mEfPsismsc:[B

.field private mIsimChannel:I

.field private mIsimGbabp:Ljava/lang/String;

.field mIsimServiceTable:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable;

.field private mSlotId:I

.field protected mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 6
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mEfPsismsc:[B

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MtkIsimUiccRecords X ctor this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->log(Ljava/lang/String;)V

    .line 98
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mSlotId:I

    .line 99
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 101
    return-void
.end method

.method static synthetic access$102(Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;
    .param p1, "x1"    # Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mIsimIst:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;)Lcom/android/internal/telephony/uicc/IccFileHandler;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;

    .line 73
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    return-object v0
.end method

.method static synthetic access$308(Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;)I
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;

    .line 73
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mRecordsToLoad:I

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;)Lcom/android/internal/telephony/uicc/IccFileHandler;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;

    .line 73
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    return-object v0
.end method

.method static synthetic access$508(Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;)I
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;

    .line 73
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mRecordsToLoad:I

    return v0
.end method


# virtual methods
.method protected fetchGbaParam()V
    .registers 4

    .line 207
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mIsimServiceTable:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable;

    sget-object v1, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->GBA:Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable;->isAvailable(Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 208
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fd5

    const/16 v2, 0xc8

    .line 209
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 208
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 210
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mRecordsToLoad:I

    .line 212
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fd7

    const/16 v2, 0xc9

    .line 213
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 212
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 214
    iget v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mRecordsToLoad:I

    .line 216
    :cond_30
    return-void
.end method

.method protected fetchIsimRecords()V
    .registers 6

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mRecordsRequested:Z

    .line 181
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    new-instance v2, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimImpiLoaded;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimImpiLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)V

    const/16 v3, 0x64

    invoke-virtual {p0, v3, v2}, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const/16 v4, 0x6f02

    invoke-virtual {v1, v4, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 183
    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mRecordsToLoad:I

    .line 185
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    new-instance v2, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimImpuLoaded;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimImpuLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)V

    invoke-virtual {p0, v3, v2}, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const/16 v4, 0x6f04

    invoke-virtual {v1, v4, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 187
    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mRecordsToLoad:I

    .line 189
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    new-instance v2, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimDomainLoaded;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimDomainLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)V

    invoke-virtual {p0, v3, v2}, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const/16 v4, 0x6f03

    invoke-virtual {v1, v4, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 191
    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mRecordsToLoad:I

    .line 192
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    new-instance v2, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords$MtkEfIsimIstLoaded;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords$MtkEfIsimIstLoaded;-><init>(Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords$1;)V

    invoke-virtual {p0, v3, v2}, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x6f07

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 194
    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mRecordsToLoad:I

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetchIsimRecords "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mRecordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mRecordsRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->log(Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public getEfPsismsc()[B
    .registers 3

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PSISMSC = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mEfPsismsc:[B

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->log(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mEfPsismsc:[B

    return-object v0
.end method

.method public getIsimGbabp()Ljava/lang/String;
    .registers 3

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ISIM GBABP = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mIsimGbabp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->log(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mIsimGbabp:Ljava/lang/String;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 108
    const/4 v0, 0x0

    .line 110
    .local v0, "isRecordLoadResponse":Z
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const-string v2, "MtkIsimUiccRecords"

    const-string v3, "["

    if-eqz v1, :cond_2f

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received message "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] while being destroyed. Ignoring."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void

    .line 115
    :cond_2f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IsimUiccRecords: handleMessage "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->loge(Ljava/lang/String;)V

    .line 118
    :try_start_50
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_10a

    .line 162
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_f1

    .line 145
    :pswitch_5a
    const/4 v0, 0x1

    .line 147
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 148
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    .line 150
    .local v3, "data":[B
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_69

    .line 151
    goto/16 :goto_f1

    .line 154
    :cond_69
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_PSISMSC: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->log(Ljava/lang/String;)V

    .line 156
    if-eqz v3, :cond_f1

    .line 157
    iput-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mEfPsismsc:[B

    goto :goto_f1

    .line 134
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "data":[B
    :pswitch_86
    const/4 v0, 0x1

    .line 135
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 136
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_b0

    .line 137
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mEfGbanlList:Ljava/util/ArrayList;

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GET_ISIM_GBANL record count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mEfGbanlList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->log(Ljava/lang/String;)V

    goto :goto_f1

    .line 140
    :cond_b0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error on GET_ISIM_GBANL with exp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->loge(Ljava/lang/String;)V

    .line 142
    goto :goto_f1

    .line 122
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_c7
    const/4 v0, 0x1

    .line 123
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 124
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_db

    .line 125
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    .line 126
    .restart local v3    # "data":[B
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mIsimGbabp:Ljava/lang/String;

    goto :goto_f1

    .line 129
    .end local v3    # "data":[B
    :cond_db
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error on GET_ISIM_GBABP with exp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->loge(Ljava/lang/String;)V
    :try_end_f1
    .catch Ljava/lang/RuntimeException; {:try_start_50 .. :try_end_f1} :catch_f9
    .catchall {:try_start_50 .. :try_end_f1} :catchall_f7

    .line 171
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :cond_f1
    :goto_f1
    if-eqz v0, :cond_103

    .line 172
    :goto_f3
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->onRecordLoaded()V

    goto :goto_103

    .line 171
    :catchall_f7
    move-exception v1

    goto :goto_104

    .line 165
    :catch_f9
    move-exception v1

    .line 167
    .local v1, "exc":Ljava/lang/RuntimeException;
    :try_start_fa
    const-string v3, "Exception parsing SIM record"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ff
    .catchall {:try_start_fa .. :try_end_ff} :catchall_f7

    .line 171
    nop

    .end local v1    # "exc":Ljava/lang/RuntimeException;
    if-eqz v0, :cond_103

    .line 172
    goto :goto_f3

    .line 176
    :cond_103
    :goto_103
    return-void

    .line 171
    :goto_104
    if-eqz v0, :cond_109

    .line 172
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->onRecordLoaded()V

    .line 174
    :cond_109
    throw v1

    :pswitch_data_10a
    .packed-switch 0xc8
        :pswitch_c7
        :pswitch_86
        :pswitch_5a
    .end packed-switch
.end method

.method protected log(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ISIM] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkIsimUiccRecords"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ISIM] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkIsimUiccRecords"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-void
.end method

.method public registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 7
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 252
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 253
    return-void

    .line 256
    :cond_9
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 257
    .local v0, "r":Lcom/android/internal/telephony/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 259
    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mRecordsToLoad:I

    if-nez v1, :cond_25

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mRecordsRequested:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_25

    .line 260
    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 262
    :cond_25
    return-void
.end method

.method public setIsimGbabp(Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .param p1, "gbabp"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 293
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 295
    .local v0, "data":[B
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x6fd5

    invoke-virtual {v1, v2, v0, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 296
    return-void
.end method

.method public unregisterForRecordsLoaded(Landroid/os/Handler;)V
    .registers 3
    .param p1, "h"    # Landroid/os/Handler;

    .line 266
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->mRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 267
    return-void
.end method
