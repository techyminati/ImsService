.class public Lcom/mediatek/internal/telephony/devreg/DeviceRegisterHandler;
.super Landroid/os/Handler;
.source "DeviceRegisterHandler.java"


# static fields
.field private static final EVENT_CDMA_CARD_INITIAL_ESN_OR_MEID:I = 0x6b


# instance fields
.field private final mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private final mController:Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;

.field private final mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;)V
    .registers 6
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "controller"    # Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;

    .line 61
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/mediatek/internal/telephony/devreg/DeviceRegisterHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 63
    iget-object v0, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/devreg/DeviceRegisterHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 64
    iput-object p2, p0, Lcom/mediatek/internal/telephony/devreg/DeviceRegisterHandler;->mController:Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;

    .line 65
    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 66
    .local v0, "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    const/16 v1, 0x6b

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->setCDMACardInitalEsnMeid(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 67
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_24

    .line 84
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_22

    .line 73
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 74
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_22

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_22

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_22

    .line 76
    :try_start_17
    iget-object v1, p0, Lcom/mediatek/internal/telephony/devreg/DeviceRegisterHandler;->mController:Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;->setCdmaCardEsnOrMeid(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_20} :catch_21

    .line 79
    goto :goto_22

    .line 77
    :catch_21
    move-exception v1

    .line 86
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_22
    :goto_22
    return-void

    nop

    :pswitch_data_24
    .packed-switch 0x6b
        :pswitch_9
    .end packed-switch
.end method
