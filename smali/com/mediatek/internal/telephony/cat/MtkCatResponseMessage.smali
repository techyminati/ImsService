.class public Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;
.super Lcom/android/internal/telephony/cat/CatResponseMessage;
.source "MtkCatResponseMessage.java"


# instance fields
.field mAdditionalInfo:[B

.field mDestinationId:I

.field mEvent:I

.field mOneShot:Z

.field mSourceId:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .registers 4
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 50
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->mEvent:I

    .line 44
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->mSourceId:I

    .line 45
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->mDestinationId:I

    .line 46
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->mAdditionalInfo:[B

    .line 47
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->mOneShot:Z

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cat/CatCmdMessage;I)V
    .registers 5
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;
    .param p2, "event"    # I

    .line 54
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->mEvent:I

    .line 44
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->mSourceId:I

    .line 45
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->mDestinationId:I

    .line 46
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->mAdditionalInfo:[B

    .line 47
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->mOneShot:Z

    .line 55
    iput p2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->mEvent:I

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cat/CatCmdMessage;Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .registers 5
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;
    .param p2, "rspMsg"    # Lcom/android/internal/telephony/cat/CatResponseMessage;

    .line 59
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->mEvent:I

    .line 44
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->mSourceId:I

    .line 45
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->mDestinationId:I

    .line 46
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->mAdditionalInfo:[B

    .line 47
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->mOneShot:Z

    .line 60
    iget-object v0, p2, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 61
    iget-object v0, p2, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 62
    iget v0, p2, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersMenuSelection:I

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->mUsersMenuSelection:I

    .line 63
    iget-object v0, p2, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersInput:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->mUsersInput:Ljava/lang/String;

    .line 64
    iget-boolean v0, p2, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersYesNoSelection:Z

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->mUsersYesNoSelection:Z

    .line 65
    iget-boolean v0, p2, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->mUsersConfirm:Z

    .line 66
    iget-boolean v0, p2, Lcom/android/internal/telephony/cat/CatResponseMessage;->mIncludeAdditionalInfo:Z

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->mIncludeAdditionalInfo:Z

    .line 67
    iget v0, p2, Lcom/android/internal/telephony/cat/CatResponseMessage;->mEventValue:I

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->mEventValue:I

    .line 68
    iget-object v0, p2, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAddedInfo:[B

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->mAddedInfo:[B

    .line 69
    return-void
.end method


# virtual methods
.method public setAdditionalInfo([B)V
    .registers 3
    .param p1, "additionalInfo"    # [B

    .line 99
    if-eqz p1, :cond_5

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->mIncludeAdditionalInfo:Z

    .line 102
    :cond_5
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->mAdditionalInfo:[B

    .line 103
    if-eqz p1, :cond_11

    array-length v0, p1

    if-lez v0, :cond_11

    .line 104
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    iput v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:I

    .line 106
    :cond_11
    return-void
.end method

.method public setDestinationId(I)V
    .registers 2
    .param p1, "dId"    # I

    .line 90
    iput p1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->mDestinationId:I

    .line 91
    return-void
.end method

.method public setEventId(I)V
    .registers 2
    .param p1, "event"    # I

    .line 81
    iput p1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->mEvent:I

    .line 82
    return-void
.end method

.method public setOneShot(Z)V
    .registers 2
    .param p1, "shot"    # Z

    .line 114
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->mOneShot:Z

    .line 115
    return-void
.end method

.method public setSourceId(I)V
    .registers 2
    .param p1, "sId"    # I

    .line 77
    iput p1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->mSourceId:I

    .line 78
    return-void
.end method
