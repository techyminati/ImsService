.class public Lcom/mediatek/internal/telephony/uicc/MtkUiccCarrierPrivilegeRules;
.super Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;
.source "MtkUiccCarrierPrivilegeRules.java"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccProfile;Landroid/os/Message;)V
    .registers 3
    .param p1, "uiccProfile"    # Lcom/android/internal/telephony/uicc/UiccProfile;
    .param p2, "loadedCallback"    # Landroid/os/Message;

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;-><init>(Lcom/android/internal/telephony/uicc/UiccProfile;Landroid/os/Message;)V

    .line 49
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 54
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_52

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handled by AOSP handleMessage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    .line 75
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->handleMessage(Landroid/os/Message;)V

    goto :goto_51

    .line 56
    :pswitch_1f
    const-string v0, "M: EVENT_OPEN_LOGICAL_CHANNEL_DONE"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    .line 57
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 58
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_35

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v1, :cond_31

    goto :goto_35

    .line 70
    :cond_31
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->handleMessage(Landroid/os/Message;)V

    .line 72
    goto :goto_51

    .line 60
    :cond_35
    :goto_35
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_4e

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 61
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v2, :cond_4e

    .line 63
    const-string v1, "RADIO_NOT_AVAILABLE"

    .line 64
    .local v1, "errorMsg":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V

    .line 66
    .end local v1    # "errorMsg":Ljava/lang/String;
    goto :goto_51

    .line 67
    :cond_4e
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->handleMessage(Landroid/os/Message;)V

    .line 77
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :goto_51
    return-void

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_1f
    .end packed-switch
.end method
