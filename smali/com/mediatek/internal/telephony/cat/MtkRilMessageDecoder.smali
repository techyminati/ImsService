.class public Lcom/mediatek/internal/telephony/cat/MtkRilMessageDecoder;
.super Lcom/android/internal/telephony/cat/RilMessageDecoder;
.source "MtkRilMessageDecoder.java"


# instance fields
.field private mSlotId:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 78
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;-><init>()V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;Landroid/content/Context;I)V
    .registers 7
    .param p1, "caller"    # Landroid/os/Handler;
    .param p2, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "slotId"    # I

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/cat/RilMessageDecoder;-><init>(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;Landroid/content/Context;)V

    .line 73
    iput p4, p0, Lcom/mediatek/internal/telephony/cat/MtkRilMessageDecoder;->mSlotId:I

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCaller is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkRilMessageDecoder;->mCaller:Landroid/os/Handler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    return-void
.end method


# virtual methods
.method public decodeMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)Z
    .registers 6
    .param p1, "rilMsg"    # Lcom/android/internal/telephony/cat/RilMessage;

    .line 95
    const-string v0, "decodeMessageParams"

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/MtkRilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

    .line 99
    iget v0, p1, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    packed-switch v0, :pswitch_data_6a

    .line 137
    const/4 v1, 0x0

    .local v1, "decodingStarted":Z
    goto :goto_69

    .line 109
    .end local v1    # "decodingStarted":Z
    :pswitch_e
    const/4 v0, 0x0

    .line 112
    .local v0, "rawData":[B
    :try_start_f
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_17} :catch_53

    move-object v0, v1

    .line 118
    nop

    .line 121
    :try_start_19
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkRilMessageDecoder;->mCmdParamsFactory:Lcom/android/internal/telephony/cat/CommandParamsFactory;

    if-eqz v1, :cond_28

    .line 122
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkRilMessageDecoder;->mCmdParamsFactory:Lcom/android/internal/telephony/cat/CommandParamsFactory;

    invoke-static {v0}, Lcom/android/internal/telephony/cat/BerTlv;->decode([B)Lcom/android/internal/telephony/cat/BerTlv;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->make(Lcom/android/internal/telephony/cat/BerTlv;)V
    :try_end_26
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_19 .. :try_end_26} :catch_2a

    .line 123
    const/4 v1, 0x1

    .restart local v1    # "decodingStarted":Z
    goto :goto_29

    .line 125
    .end local v1    # "decodingStarted":Z
    :cond_28
    const/4 v1, 0x0

    .line 134
    .restart local v1    # "decodingStarted":Z
    :goto_29
    goto :goto_69

    .line 127
    .end local v1    # "decodingStarted":Z
    :catch_2a
    move-exception v1

    .line 129
    .local v1, "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decodeMessageParams: caught ResultException e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/MtkRilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

    const/4 v3, 0x1

    iput v3, v2, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    .line 131
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/MtkRilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 132
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/MtkRilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/cat/MtkRilMessageDecoder;->sendCmdForExecution(Lcom/android/internal/telephony/cat/RilMessage;)V

    .line 133
    const/4 v1, 0x0

    .line 135
    .local v1, "decodingStarted":Z
    goto :goto_69

    .line 113
    .end local v1    # "decodingStarted":Z
    :catch_53
    move-exception v1

    .line 115
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "decodeMessageParams dropping zombie messages"

    invoke-static {p0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    const/4 v2, 0x0

    .line 117
    .local v2, "decodingStarted":Z
    move v1, v2

    goto :goto_69

    .line 102
    .end local v0    # "rawData":[B
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "decodingStarted":Z
    :pswitch_5c
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkRilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v1, v0, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 103
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkRilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkRilMessageDecoder;->sendCmdForExecution(Lcom/android/internal/telephony/cat/RilMessage;)V

    .line 104
    const/4 v1, 0x0

    .line 105
    .local v1, "decodingStarted":Z
    nop

    .line 140
    :goto_69
    return v1

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_e
        :pswitch_e
        :pswitch_5c
        :pswitch_e
    .end packed-switch
.end method

.method public dispose()V
    .registers 4

    .line 144
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cat/MtkRilMessageDecoder;->quitNow()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkRilMessageDecoder;->mStateStart:Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;

    .line 146
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkRilMessageDecoder;->mStateCmdParamsReady:Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;

    .line 147
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkRilMessageDecoder;->mCmdParamsFactory:Lcom/android/internal/telephony/cat/CommandParamsFactory;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->dispose()V

    .line 148
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkRilMessageDecoder;->mCmdParamsFactory:Lcom/android/internal/telephony/cat/CommandParamsFactory;

    .line 149
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkRilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

    .line 150
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkRilMessageDecoder;->mCaller:Landroid/os/Handler;

    .line 153
    sget-object v1, Lcom/mediatek/internal/telephony/cat/MtkRilMessageDecoder;->mInstance:[Lcom/android/internal/telephony/cat/RilMessageDecoder;

    if-eqz v1, :cond_3a

    .line 154
    sget-object v1, Lcom/mediatek/internal/telephony/cat/MtkRilMessageDecoder;->mInstance:[Lcom/android/internal/telephony/cat/RilMessageDecoder;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/MtkRilMessageDecoder;->mSlotId:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_25

    .line 155
    sget-object v1, Lcom/mediatek/internal/telephony/cat/MtkRilMessageDecoder;->mInstance:[Lcom/android/internal/telephony/cat/RilMessageDecoder;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/MtkRilMessageDecoder;->mSlotId:I

    aput-object v0, v1, v2

    .line 158
    :cond_25
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_26
    sget v2, Lcom/mediatek/internal/telephony/cat/MtkRilMessageDecoder;->mSimCount:I

    if-ge v1, v2, :cond_34

    .line 159
    sget-object v2, Lcom/mediatek/internal/telephony/cat/MtkRilMessageDecoder;->mInstance:[Lcom/android/internal/telephony/cat/RilMessageDecoder;

    aget-object v2, v2, v1

    if-eqz v2, :cond_31

    .line 160
    goto :goto_34

    .line 158
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 164
    :cond_34
    :goto_34
    sget v2, Lcom/mediatek/internal/telephony/cat/MtkRilMessageDecoder;->mSimCount:I

    if-ne v1, v2, :cond_3a

    .line 165
    sput-object v0, Lcom/mediatek/internal/telephony/cat/MtkRilMessageDecoder;->mInstance:[Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 168
    .end local v1    # "i":I
    :cond_3a
    return-void
.end method

.method public getSlotId()I
    .registers 2

    .line 67
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/MtkRilMessageDecoder;->mSlotId:I

    return v0
.end method

.method protected sendCmdForExecution(Lcom/android/internal/telephony/cat/RilMessage;)V
    .registers 6
    .param p1, "rilMsg"    # Lcom/android/internal/telephony/cat/RilMessage;

    .line 83
    const-string v0, "sendCmdForExecution"

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    instance-of v0, p1, Lcom/mediatek/internal/telephony/cat/MtkRilMessage;

    if-eqz v0, :cond_1d

    .line 85
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkRilMessageDecoder;->mCaller:Landroid/os/Handler;

    const/16 v1, 0xa

    new-instance v2, Lcom/mediatek/internal/telephony/cat/MtkRilMessage;

    move-object v3, p1

    check-cast v3, Lcom/mediatek/internal/telephony/cat/MtkRilMessage;

    invoke-direct {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkRilMessage;-><init>(Lcom/mediatek/internal/telephony/cat/MtkRilMessage;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 87
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 88
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_20

    .line 89
    :cond_1d
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendCmdForExecution(Lcom/android/internal/telephony/cat/RilMessage;)V

    .line 91
    :goto_20
    return-void
.end method
