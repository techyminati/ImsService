.class public Lcom/mediatek/internal/telephony/MtkCallManager$MtkCallManagerHandler;
.super Lcom/android/internal/telephony/CallManager$CallManagerHandler;
.source "MtkCallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkCallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MtkCallManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/MtkCallManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/MtkCallManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkCallManager;

    .line 53
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkCallManager$MtkCallManagerHandler;->this$0:Lcom/mediatek/internal/telephony/MtkCallManager;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager$CallManagerHandler;-><init>(Lcom/android/internal/telephony/CallManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 57
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_40

    .line 70
    invoke-super {p0, p1}, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->handleMessage(Landroid/os/Message;)V

    goto :goto_3f

    .line 60
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 61
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 62
    .local v1, "subId":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkCallManager$MtkCallManagerHandler;->this$0:Lcom/mediatek/internal/telephony/MtkCallManager;

    invoke-virtual {v2, v1}, Lcom/mediatek/internal/telephony/MtkCallManager;->getActiveFgCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v2

    if-nez v2, :cond_3f

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkCallManager$MtkCallManagerHandler;->this$0:Lcom/mediatek/internal/telephony/MtkCallManager;

    # invokes: Lcom/mediatek/internal/telephony/MtkCallManager;->hasMoreThanOneRingingCall()Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkCallManager;->access$000(Lcom/mediatek/internal/telephony/MtkCallManager;)Z

    move-result v2

    if-eqz v2, :cond_32

    goto :goto_3f

    .line 66
    :cond_32
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkCallManager$MtkCallManagerHandler;->this$0:Lcom/mediatek/internal/telephony/MtkCallManager;

    # getter for: Lcom/mediatek/internal/telephony/MtkCallManager;->mNewRingingConnectionRegistrants:Lcom/android/internal/telephony/RegistrantList;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkCallManager;->access$100(Lcom/mediatek/internal/telephony/MtkCallManager;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 72
    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    .end local v1    # "subId":I
    :cond_3f
    :goto_3f
    return-void

    :pswitch_data_40
    .packed-switch 0x66
        :pswitch_9
    .end packed-switch
.end method
