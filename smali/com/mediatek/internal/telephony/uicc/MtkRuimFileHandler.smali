.class public final Lcom/mediatek/internal/telephony/uicc/MtkRuimFileHandler;
.super Lcom/android/internal/telephony/uicc/RuimFileHandler;
.source "MtkRuimFileHandler.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/uicc/MtkIccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "MtkRuimFH"


# instance fields
.field mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 5
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/RuimFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimFileHandler;->mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    .line 60
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    invoke-direct {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimFileHandler;->mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    .line 62
    return-void
.end method


# virtual methods
.method public loadEFLinearFixedAll(IILandroid/os/Message;)V
    .registers 5
    .param p1, "fileid"    # I
    .param p2, "mode"    # I
    .param p3, "onLoaded"    # Landroid/os/Message;

    .line 70
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimFileHandler;->mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->loadEFLinearFixedAllByMode(IILandroid/os/Message;)V

    .line 71
    return-void
.end method

.method public loadEFLinearFixedAll(ILandroid/os/Message;Z)V
    .registers 5
    .param p1, "fileid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;
    .param p3, "is7FFF"    # Z

    .line 66
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimFileHandler;->mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->loadEFLinearFixedAllByPath(ILandroid/os/Message;Z)V

    .line 67
    return-void
.end method

.method public loadEFTransparent(ILjava/lang/String;Landroid/os/Message;)V
    .registers 5
    .param p1, "fileid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "onLoaded"    # Landroid/os/Message;

    .line 74
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimFileHandler;->mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->loadEFTransparent(ILjava/lang/String;Landroid/os/Message;)V

    .line 75
    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[RuimFileHandler] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkRuimFH"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[RuimFileHandler] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkRuimFH"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method

.method public readEFLinearFixed(IIILandroid/os/Message;)V
    .registers 6
    .param p1, "fileid"    # I
    .param p2, "recordNum"    # I
    .param p3, "recordSize"    # I
    .param p4, "onLoaded"    # Landroid/os/Message;

    .line 84
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimFileHandler;->mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->readEFLinearFixed(IIILandroid/os/Message;)V

    .line 85
    return-void
.end method

.method public selectEFFile(ILandroid/os/Message;)V
    .registers 4
    .param p1, "fileid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .line 88
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimFileHandler;->mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->selectEFFile(ILandroid/os/Message;)V

    .line 89
    return-void
.end method

.method public updateEFTransparent(ILjava/lang/String;[BLandroid/os/Message;)V
    .registers 6
    .param p1, "fileid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p4, "onComplete"    # Landroid/os/Message;

    .line 78
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimFileHandler;->mMtkIccFh:Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;->updateEFTransparent(ILjava/lang/String;[BLandroid/os/Message;)V

    .line 79
    return-void
.end method
