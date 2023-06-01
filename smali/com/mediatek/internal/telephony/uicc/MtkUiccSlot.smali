.class public Lcom/mediatek/internal/telephony/uicc/MtkUiccSlot;
.super Lcom/android/internal/telephony/uicc/UiccSlot;
.source "MtkUiccSlot.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "MtkUiccSlot"


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "isActive"    # Z

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccSlot;-><init>(Landroid/content/Context;Z)V

    .line 53
    const-string v0, "Creating"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccSlot;->logd(Ljava/lang/String;)V

    .line 54
    return-void
.end method


# virtual methods
.method public isEuicc()Z
    .registers 2

    .line 73
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccSlot;->getEid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method protected logd(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 77
    const-string v0, "MtkUiccSlot"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void
.end method

.method public onRadioStateUnavailable()V
    .registers 5

    .line 58
    const-string v0, "onRadioStateUnavailable"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccSlot;->logd(Ljava/lang/String;)V

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccSlot;->nullifyUiccCard(Z)V

    .line 61
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccSlot;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 62
    const-string v0, "updateInternalIccState with valid phone id"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccSlot;->logd(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccSlot;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 64
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccSlot;->getPhoneId()I

    move-result v3

    .line 63
    invoke-static {v0, v2, v1, v3}, Lcom/android/internal/telephony/uicc/UiccController;->updateInternalIccState(Landroid/content/Context;Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/String;I)V

    .line 67
    :cond_24
    iput-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccSlot;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 68
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccSlot;->mLastRadioState:I

    .line 69
    return-void
.end method
