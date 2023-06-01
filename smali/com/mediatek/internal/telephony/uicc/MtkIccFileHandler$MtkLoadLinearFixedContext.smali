.class Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;
.super Ljava/lang/Object;
.source "MtkIccFileHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MtkLoadLinearFixedContext"
.end annotation


# instance fields
.field mCountRecords:I

.field mEfid:I

.field mLoadAll:Z

.field mMode:I

.field mOnLoaded:Landroid/os/Message;

.field mPath:Ljava/lang/String;

.field mRecordNum:I

.field mRecordSize:I

.field results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILandroid/os/Message;)V
    .registers 4
    .param p1, "efid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput p1, p0, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;->mEfid:I

    .line 98
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;->mRecordNum:I

    .line 99
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;->mLoadAll:Z

    .line 100
    iput-object p2, p0, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;->mPath:Ljava/lang/String;

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadLinearFixedContext;->mMode:I

    .line 105
    return-void
.end method
