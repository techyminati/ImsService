.class Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper$SuppServQueueHelperHandler;
.super Landroid/os/Handler;
.source "MtkSuppServQueueHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SuppServQueueHelperHandler"
.end annotation


# static fields
.field private static final QUERY_OVER_GSM:I = 0x0

.field private static final QUERY_OVER_GSM_OVER_UT:I = 0x1

.field private static final QUERY_OVER_IMS:I = 0x2


# instance fields
.field private paused:Z

.field private requestBuffer:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;Landroid/os/Looper;)V
    .registers 4
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 122
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper$SuppServQueueHelperHandler;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;

    .line 123
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 115
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper$SuppServQueueHelperHandler;->requestBuffer:Ljava/util/Vector;

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper$SuppServQueueHelperHandler;->paused:Z

    .line 124
    return-void
.end method

.method private isMDSupportIMSSuppServ()Z
    .registers 4

    .line 332
    const/4 v0, 0x0

    .line 333
    .local v0, "r":Z
    const-string v1, "ro.vendor.md_auto_setup_ims"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 334
    const/4 v0, 0x1

    .line 336
    :cond_10
    return v0
.end method

.method private isVoiceInService(Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;)Z
    .registers 3
    .param p1, "phone"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 324
    iget-object v0, p1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-eqz v0, :cond_16

    iget-object v0, p1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_16

    iget-object v0, p1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 325
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_16

    .line 326
    const/4 v0, 0x1

    return v0

    .line 328
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method private processRequest(Ljava/lang/Object;I)V
    .registers 19
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "phoneId"    # I

    .line 172
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p1

    check-cast v2, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;

    .line 173
    .local v2, "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    iget-object v3, v2, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 174
    iget-object v3, v0, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper$SuppServQueueHelperHandler;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;

    # getter for: Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->mHandler:Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper$SuppServQueueHelperHandler;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->access$100(Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;)Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper$SuppServQueueHelperHandler;

    move-result-object v3

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v2}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper$SuppServQueueHelperHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 175
    .local v3, "respCallback":Landroid/os/Message;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processRequest(), ss.mRequestCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mRequestCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", ss.mResultCallback = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mResultCallback:Landroid/os/Message;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", phoneId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SuppServQueueHelper"

    invoke-static {v6, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget v5, v2, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mRequestCode:I

    const/4 v7, 0x1

    packed-switch v5, :pswitch_data_14c

    .line 244
    :pswitch_49
    const-string v4, "processRequest(), no match mRequestCode"

    invoke-static {v6, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14b

    .line 236
    :pswitch_50
    iget-object v5, v2, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 237
    .local v5, "reason":I
    iget-object v6, v2, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 239
    .local v6, "withTimeSlot":I
    nop

    .line 240
    if-ne v6, v7, :cond_60

    move v4, v7

    .line 239
    :cond_60
    invoke-virtual {v0, v1, v5, v4, v3}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper$SuppServQueueHelperHandler;->queryCallForwardingOption(IIZLandroid/os/Message;)V

    .line 241
    goto/16 :goto_14b

    .line 198
    .end local v5    # "reason":I
    .end local v6    # "withTimeSlot":I
    :pswitch_65
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper$SuppServQueueHelperHandler;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;

    # getter for: Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->mPhones:[Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->access$200(Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;)[Lcom/android/internal/telephony/Phone;

    move-result-object v4

    aget-object v4, v4, v1

    check-cast v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v4, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCallWaitingInternal(Landroid/os/Message;)V

    .line 199
    goto/16 :goto_14b

    .line 202
    :pswitch_74
    iget-object v5, v2, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v5, v7, :cond_7d

    move v4, v7

    .line 203
    .local v4, "enable":Z
    :cond_7d
    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper$SuppServQueueHelperHandler;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;

    # getter for: Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->mPhones:[Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->access$200(Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;)[Lcom/android/internal/telephony/Phone;

    move-result-object v5

    aget-object v5, v5, v1

    check-cast v5, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v5, v4, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCallWaitingInternal(ZLandroid/os/Message;)V

    .line 205
    goto/16 :goto_14b

    .line 181
    .end local v4    # "enable":Z
    :pswitch_8c
    iget-object v4, v2, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 182
    .local v4, "cfReason":I
    iget-object v5, v2, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 183
    .local v5, "serviceClass":I
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper$SuppServQueueHelperHandler;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;

    # getter for: Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->mPhones:[Lcom/android/internal/telephony/Phone;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->access$200(Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;)[Lcom/android/internal/telephony/Phone;

    move-result-object v6

    aget-object v6, v6, v1

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v6, v4, v5, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCallForwardingOptionInternal(IILandroid/os/Message;)V

    .line 185
    goto/16 :goto_14b

    .line 188
    .end local v4    # "cfReason":I
    .end local v5    # "serviceClass":I
    :pswitch_a7
    iget-object v4, v2, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 189
    .local v4, "action":I
    iget-object v5, v2, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 190
    .local v5, "cfReason":I
    iget-object v6, v2, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 191
    .local v13, "number":Ljava/lang/String;
    iget-object v6, v2, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 192
    .local v14, "timerSeconds":I
    iget-object v6, v2, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 193
    .local v15, "serviceClass":I
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper$SuppServQueueHelperHandler;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;

    # getter for: Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->mPhones:[Lcom/android/internal/telephony/Phone;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->access$200(Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;)[Lcom/android/internal/telephony/Phone;

    move-result-object v6

    aget-object v6, v6, v1

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    move v7, v4

    move v8, v5

    move-object v9, v13

    move v10, v14

    move v11, v15

    move-object v12, v3

    invoke-virtual/range {v6 .. v12}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCallForwardingOptionInternal(IILjava/lang/String;IILandroid/os/Message;)V

    .line 195
    goto/16 :goto_14b

    .line 208
    .end local v4    # "action":I
    .end local v5    # "cfReason":I
    .end local v13    # "number":Ljava/lang/String;
    .end local v14    # "timerSeconds":I
    .end local v15    # "serviceClass":I
    :pswitch_da
    iget-object v4, v2, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 209
    .local v4, "facility":Ljava/lang/String;
    iget-object v5, v2, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 210
    .local v5, "password":Ljava/lang/String;
    iget-object v6, v2, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 211
    .local v6, "serviceClass":I
    iget-object v7, v0, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper$SuppServQueueHelperHandler;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;

    # getter for: Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->mPhones:[Lcom/android/internal/telephony/Phone;
    invoke-static {v7}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->access$200(Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;)[Lcom/android/internal/telephony/Phone;

    move-result-object v7

    aget-object v7, v7, v1

    check-cast v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v7, v4, v5, v3, v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCallBarringInternal(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V

    .line 213
    goto :goto_14b

    .line 216
    .end local v4    # "facility":Ljava/lang/String;
    .end local v5    # "password":Ljava/lang/String;
    .end local v6    # "serviceClass":I
    :pswitch_fa
    iget-object v5, v2, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 217
    .local v5, "facility":Ljava/lang/String;
    iget-object v6, v2, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v7, :cond_10a

    move v8, v7

    goto :goto_10b

    :cond_10a
    move v8, v4

    .line 218
    .local v8, "lockState":Z
    :goto_10b
    iget-object v4, v2, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 219
    .local v4, "password":Ljava/lang/String;
    iget-object v6, v2, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 220
    .local v12, "serviceClass":I
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper$SuppServQueueHelperHandler;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;

    # getter for: Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->mPhones:[Lcom/android/internal/telephony/Phone;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->access$200(Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;)[Lcom/android/internal/telephony/Phone;

    move-result-object v6

    aget-object v6, v6, v1

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    move-object v7, v5

    move-object v9, v4

    move-object v10, v3

    move v11, v12

    invoke-virtual/range {v6 .. v11}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCallBarringInternal(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V

    .line 222
    goto :goto_14b

    .line 225
    .end local v4    # "password":Ljava/lang/String;
    .end local v5    # "facility":Ljava/lang/String;
    .end local v8    # "lockState":Z
    .end local v12    # "serviceClass":I
    :pswitch_129
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper$SuppServQueueHelperHandler;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;

    # getter for: Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->mPhones:[Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->access$200(Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;)[Lcom/android/internal/telephony/Phone;

    move-result-object v4

    aget-object v4, v4, v1

    check-cast v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v4, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getOutgoingCallerIdDisplayInternal(Landroid/os/Message;)V

    .line 227
    goto :goto_14b

    .line 230
    :pswitch_137
    iget-object v4, v2, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 231
    .local v4, "clirMode":I
    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper$SuppServQueueHelperHandler;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;

    # getter for: Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->mPhones:[Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->access$200(Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;)[Lcom/android/internal/telephony/Phone;

    move-result-object v5

    aget-object v5, v5, v1

    check-cast v5, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v5, v4, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setOutgoingCallerIdDisplayInternal(ILandroid/os/Message;)V

    .line 233
    nop

    .line 246
    .end local v4    # "clirMode":I
    :goto_14b
    return-void

    :pswitch_data_14c
    .packed-switch 0x3
        :pswitch_137
        :pswitch_129
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_fa
        :pswitch_da
        :pswitch_a7
        :pswitch_8c
        :pswitch_74
        :pswitch_65
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_50
    .end packed-switch
.end method

.method private processResponse(Ljava/lang/Object;)V
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 250
    move-object v0, p1

    check-cast v0, Landroid/os/AsyncResult;

    .line 251
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;

    .line 252
    .local v1, "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mResultCallback:Landroid/os/Message;

    .line 254
    .local v2, "resp":Landroid/os/Message;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processResponse, resp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " , ar.result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " , ar.exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SuppServQueueHelper"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    if-eqz v2, :cond_3f

    .line 258
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 259
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 263
    :cond_3f
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->setResultCallback(Landroid/os/Message;)V

    .line 264
    iget-object v3, v1, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 265
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 133
    const-string v0, "SuppServQueueHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage(), msg.what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , paused = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper$SuppServQueueHelperHandler;->paused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_88

    .line 164
    const-string v0, "SuppServQueueHelper"

    const-string v1, "handleMessage(), msg.what must be SEND or RESPONSE"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_87

    .line 153
    :pswitch_2f
    # getter for: Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->pausedSync:Ljava/lang/Object;
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 154
    :try_start_34
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper$SuppServQueueHelperHandler;->processResponse(Ljava/lang/Object;)V

    .line 155
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper$SuppServQueueHelperHandler;->paused:Z

    .line 156
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper$SuppServQueueHelperHandler;->requestBuffer:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_54

    .line 157
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper$SuppServQueueHelperHandler;->requestBuffer:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 158
    .local v2, "request":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper$SuppServQueueHelperHandler;->requestBuffer:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 159
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper$SuppServQueueHelperHandler;->sendMessage(Landroid/os/Message;)Z

    .line 161
    .end local v2    # "request":Landroid/os/Message;
    :cond_54
    monitor-exit v0

    .line 162
    goto :goto_87

    .line 161
    :catchall_56
    move-exception v1

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_34 .. :try_end_58} :catchall_56

    throw v1

    .line 139
    :pswitch_59
    # getter for: Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->pausedSync:Ljava/lang/Object;
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 140
    :try_start_5e
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper$SuppServQueueHelperHandler;->paused:Z

    if-eqz v1, :cond_78

    .line 141
    const-string v1, "SuppServQueueHelper"

    const-string v2, "A SS request ongoing, add it into the queue"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 143
    .local v1, "msgCopy":Landroid/os/Message;
    invoke-virtual {v1, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 144
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper$SuppServQueueHelperHandler;->requestBuffer:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 145
    nop

    .end local v1    # "msgCopy":Landroid/os/Message;
    goto :goto_82

    .line 147
    :cond_78
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper$SuppServQueueHelperHandler;->processRequest(Ljava/lang/Object;I)V

    .line 148
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper$SuppServQueueHelperHandler;->paused:Z

    .line 150
    :goto_82
    monitor-exit v0

    .line 151
    goto :goto_87

    .line 150
    :catchall_84
    move-exception v1

    monitor-exit v0
    :try_end_86
    .catchall {:try_start_5e .. :try_end_86} :catchall_84

    throw v1

    .line 166
    :goto_87
    return-void

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_59
        :pswitch_2f
    .end packed-switch
.end method

.method public queryCallForwardingOption(IIZLandroid/os/Message;)V
    .registers 9
    .param p1, "phoneId"    # I
    .param p2, "reason"    # I
    .param p3, "withTimeSlot"    # Z
    .param p4, "respCallback"    # Landroid/os/Message;

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCallForwardingOption, reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", withTimeSlot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuppServQueueHelper"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_c4

    goto/16 :goto_c3

    .line 273
    :pswitch_26
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper$SuppServQueueHelperHandler;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;

    # getter for: Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->mPhones:[Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->access$200(Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;)[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 274
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz p3, :cond_3c

    .line 275
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    invoke-virtual {v1, v2, p4}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->getCallForwardInTimeSlot(ILandroid/os/Message;)V

    goto/16 :goto_c3

    .line 278
    :cond_3c
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    invoke-virtual {v1, v2, p4}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 281
    goto/16 :goto_c3

    .line 283
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :pswitch_44
    if-eqz p3, :cond_6e

    .line 284
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper$SuppServQueueHelperHandler;->isMDSupportIMSSuppServ()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 285
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper$SuppServQueueHelperHandler;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;

    # getter for: Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->mPhones:[Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->access$200(Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;)[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    aget-object v0, v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    .line 286
    invoke-virtual {v0, v2, v1, p4}, Lcom/mediatek/internal/telephony/MtkRIL;->queryCallForwardInTimeSlotStatus(IILandroid/os/Message;)V

    goto :goto_c3

    .line 290
    :cond_5c
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper$SuppServQueueHelperHandler;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;

    # getter for: Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->mPhones:[Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->access$200(Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;)[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    aget-object v0, v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getMtkSSRequestDecisionMaker()Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    move-result-object v0

    .line 291
    invoke-virtual {v0, v2, v1, p4}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->queryCallForwardInTimeSlotStatus(IILandroid/os/Message;)V

    goto :goto_c3

    .line 297
    :cond_6e
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper$SuppServQueueHelperHandler;->isMDSupportIMSSuppServ()Z

    move-result v3

    if-eqz v3, :cond_84

    .line 298
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper$SuppServQueueHelperHandler;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;

    # getter for: Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->mPhones:[Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->access$200(Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;)[Lcom/android/internal/telephony/Phone;

    move-result-object v3

    aget-object v3, v3, p1

    check-cast v3, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v2, v1, v0, p4}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    goto :goto_c3

    .line 302
    :cond_84
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper$SuppServQueueHelperHandler;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;

    # getter for: Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->mPhones:[Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->access$200(Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;)[Lcom/android/internal/telephony/Phone;

    move-result-object v3

    aget-object v3, v3, p1

    check-cast v3, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getMtkSSRequestDecisionMaker()Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    move-result-object v3

    .line 303
    invoke-virtual {v3, v2, v1, v0, p4}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 309
    goto :goto_c3

    .line 311
    :pswitch_96
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper$SuppServQueueHelperHandler;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;

    # getter for: Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->mPhones:[Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->access$200(Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;)[Lcom/android/internal/telephony/Phone;

    move-result-object v3

    aget-object v3, v3, p1

    check-cast v3, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper$SuppServQueueHelperHandler;->isVoiceInService(Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;)Z

    move-result v3

    if-eqz v3, :cond_b6

    .line 312
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper$SuppServQueueHelperHandler;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;

    # getter for: Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->mPhones:[Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->access$200(Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;)[Lcom/android/internal/telephony/Phone;

    move-result-object v3

    aget-object v3, v3, p1

    check-cast v3, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v2, v1, v0, p4}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    goto :goto_c3

    .line 315
    :cond_b6
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {p4, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 317
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 321
    :goto_c3
    return-void

    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_96
        :pswitch_44
        :pswitch_26
    .end packed-switch
.end method

.method public run()V
    .registers 1

    .line 129
    return-void
.end method
