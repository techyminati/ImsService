.class abstract Lcom/mediatek/internal/telephony/cat/Channel;
.super Ljava/lang/Object;
.source "Channel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;,
        Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;,
        Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;
    }
.end annotation


# static fields
.field protected static final SOCKET_TIMEOUT:I = 0xbb8


# instance fields
.field protected isChannelOpened:Z

.field protected isReceiveDataTRSent:Z

.field protected mAddress:Ljava/net/InetAddress;

.field protected mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

.field protected mBipService:Lcom/mediatek/internal/telephony/cat/BipService;

.field protected mBufferSize:I

.field protected mChannelId:I

.field protected mChannelStatus:I

.field protected mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

.field private mHandler:Lcom/mediatek/internal/telephony/cat/MtkCatService;

.field protected mLinkMode:I

.field protected mLock:Ljava/lang/Object;

.field protected mNetwork:Landroid/net/Network;

.field protected mPort:I

.field protected mProtocolType:I

.field protected mRecvDataRet:Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;

.field protected mRxBuffer:[B

.field protected mRxBufferCacheCount:I

.field protected mRxBufferCount:I

.field protected mRxBufferOffset:I

.field private volatile mStop:Z

.field protected mTxBuffer:[B

.field protected mTxBufferCount:I

.field protected needCopy:I


# direct methods
.method constructor <init>(IIILjava/net/InetAddress;IILcom/mediatek/internal/telephony/cat/MtkCatService;Lcom/mediatek/internal/telephony/cat/BipService;)V
    .registers 11
    .param p1, "cid"    # I
    .param p2, "linkMode"    # I
    .param p3, "protocolType"    # I
    .param p4, "address"    # Ljava/net/InetAddress;
    .param p5, "port"    # I
    .param p6, "bufferSize"    # I
    .param p7, "handler"    # Lcom/mediatek/internal/telephony/cat/MtkCatService;
    .param p8, "bipManager"    # Lcom/mediatek/internal/telephony/cat/BipService;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelId:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelStatus:I

    .line 63
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mLinkMode:I

    .line 64
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mProtocolType:I

    .line 66
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mAddress:Ljava/net/InetAddress;

    .line 67
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mPort:I

    .line 68
    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mHandler:Lcom/mediatek/internal/telephony/cat/MtkCatService;

    .line 69
    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mBipService:Lcom/mediatek/internal/telephony/cat/BipService;

    .line 70
    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    .line 71
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mBufferSize:I

    .line 72
    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    .line 73
    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mTxBuffer:[B

    .line 74
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 75
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 76
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mTxBufferCount:I

    .line 77
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    .line 78
    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRecvDataRet:Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;

    .line 79
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/Channel;->needCopy:I

    .line 80
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/Channel;->isChannelOpened:Z

    .line 82
    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    .line 84
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/Channel;->isReceiveDataTRSent:Z

    .line 85
    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mNetwork:Landroid/net/Network;

    .line 246
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mStop:Z

    .line 89
    iput p1, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelId:I

    .line 90
    iput p2, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mLinkMode:I

    .line 91
    iput p3, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mProtocolType:I

    .line 92
    iput-object p4, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mAddress:Ljava/net/InetAddress;

    .line 93
    iput p5, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mPort:I

    .line 94
    iput p6, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mBufferSize:I

    .line 95
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mLock:Ljava/lang/Object;

    .line 96
    iput-object p7, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mHandler:Lcom/mediatek/internal/telephony/cat/MtkCatService;

    .line 97
    iput-object p8, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mBipService:Lcom/mediatek/internal/telephony/cat/BipService;

    .line 98
    invoke-virtual {p8}, Lcom/mediatek/internal/telephony/cat/BipService;->getBipChannelManager()Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    .line 99
    new-instance v1, Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    invoke-direct {v1, p1, v0, v0}, Lcom/mediatek/internal/telephony/cat/ChannelStatus;-><init>(III)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/cat/Channel;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/Channel;

    .line 60
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mStop:Z

    return v0
.end method


# virtual methods
.method public changeChannelStatus(B)V
    .registers 8
    .param p1, "status"    # B

    .line 154
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mBipService:Lcom/mediatek/internal/telephony/cat/BipService;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrentSetupEventCmd:Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;

    if-nez v0, :cond_c

    .line 155
    const-string v0, "mCurrentSetupEventCmd is null"

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    return-void

    .line 158
    :cond_c
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mBipService:Lcom/mediatek/internal/telephony/cat/BipService;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/cat/BipService;->hasPsEvent(I)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 159
    const-string v0, "No need to send channel status."

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    return-void

    .line 163
    :cond_1c
    new-instance v0, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mBipService:Lcom/mediatek/internal/telephony/cat/BipService;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrentSetupEventCmd:Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;

    invoke-direct {v0, v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;I)V

    .line 166
    .local v0, "resMsg":Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Channel]:changeChannelStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[BIP]"

    invoke-static {v3, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const/4 v2, 0x4

    new-array v2, v2, [B

    .line 169
    .local v2, "additionalInfo":[B
    const/16 v3, -0x48

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    .line 170
    const/4 v3, 0x1

    const/4 v5, 0x2

    aput-byte v5, v2, v3

    .line 171
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cat/Channel;->getChannelId()I

    move-result v3

    or-int/2addr v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 172
    const/4 v3, 0x3

    aput-byte v4, v2, v3

    .line 174
    const/16 v3, 0x82

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->setSourceId(I)V

    .line 175
    const/16 v3, 0x81

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->setDestinationId(I)V

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->setEventDownload(I[B)V

    .line 178
    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->setAdditionalInfo([B)V

    .line 179
    invoke-virtual {v0, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->setOneShot(Z)V

    .line 180
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mHandler:Lcom/mediatek/internal/telephony/cat/MtkCatService;

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->onEventDownload(Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;)V

    .line 182
    return-void
.end method

.method protected checkBufferSize()I
    .registers 8

    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "minBufferSize":I
    const/4 v1, 0x0

    .line 207
    .local v1, "maxBufferSize":I
    const/4 v2, 0x0

    .line 209
    .local v2, "defaultBufferSize":I
    iget v3, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mProtocolType:I

    const/4 v4, 0x3

    const/4 v5, 0x5

    if-eq v3, v5, :cond_1c

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1c

    if-ne v3, v4, :cond_f

    goto :goto_1c

    .line 215
    :cond_f
    const/4 v5, 0x4

    if-eq v3, v5, :cond_15

    const/4 v5, 0x1

    if-ne v3, v5, :cond_22

    .line 217
    :cond_15
    const/16 v0, 0xff

    .line 218
    const/16 v1, 0x578

    .line 219
    const/16 v2, 0x400

    goto :goto_22

    .line 212
    :cond_1c
    :goto_1c
    const/16 v0, 0xff

    .line 213
    const/16 v1, 0x578

    .line 214
    const/16 v2, 0x400

    .line 222
    :cond_22
    :goto_22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mBufferSize:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mBufferSize:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " minBufferSize:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " maxBufferSize:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "[BIP]"

    invoke-static {v5, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget v3, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mBufferSize:I

    if-lt v3, v0, :cond_57

    if-gt v3, v1, :cond_57

    .line 226
    const-string v3, "buffer size is normal"

    invoke-static {v5, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const/4 v3, 0x0

    return v3

    .line 229
    :cond_57
    if-le v3, v1, :cond_61

    .line 230
    const-string v3, "buffer size is too large, change it to maximum value"

    invoke-static {v5, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iput v1, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mBufferSize:I

    goto :goto_68

    .line 233
    :cond_61
    const-string v3, "buffer size is too small, change it to default value"

    invoke-static {v5, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iput v2, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mBufferSize:I

    .line 238
    :goto_68
    iget v3, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mBufferSize:I

    const/16 v6, 0xed

    if-ge v3, v6, :cond_75

    .line 239
    const-string v3, "buffer size is smaller than 255, change it to MAX_APDU_SIZE"

    invoke-static {v5, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iput v6, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mBufferSize:I

    .line 243
    :cond_75
    return v4
.end method

.method public clearChannelBuffer(Z)V
    .registers 4
    .param p1, "resetBuffer"    # Z

    .line 193
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne v1, p1, :cond_f

    .line 194
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 195
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mTxBuffer:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_14

    .line 197
    :cond_f
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    .line 198
    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mTxBuffer:[B

    .line 200
    :goto_14
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 201
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 202
    iput v0, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mTxBufferCount:I

    .line 203
    return-void
.end method

.method public abstract closeChannel()I
.end method

.method public dataAvailable(I)V
    .registers 10
    .param p1, "bufferSize"    # I

    .line 116
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mBipService:Lcom/mediatek/internal/telephony/cat/BipService;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/cat/BipService;->mCurrentSetupEventCmd:Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;

    if-nez v0, :cond_c

    .line 117
    const-string v0, "mCurrentSetupEventCmd is null"

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    return-void

    .line 120
    :cond_c
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mBipService:Lcom/mediatek/internal/telephony/cat/BipService;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/cat/BipService;->hasPsEvent(I)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 121
    const-string v0, "No need to send data available."

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    return-void

    .line 125
    :cond_1c
    new-instance v0, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;

    invoke-static {}, Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;->getCmdMsg()Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;I)V

    .line 127
    .local v0, "resMsg":Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;
    const/4 v2, 0x7

    new-array v2, v2, [B

    .line 128
    .local v2, "additionalInfo":[B
    const/16 v3, -0x48

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    .line 129
    const/4 v3, 0x1

    const/4 v5, 0x2

    aput-byte v5, v2, v3

    .line 130
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cat/Channel;->getChannelId()I

    move-result v6

    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    iget v7, v7, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 131
    const/4 v5, 0x3

    aput-byte v4, v2, v5

    .line 133
    const/4 v5, 0x4

    const/16 v6, -0x49

    aput-byte v6, v2, v5

    .line 134
    const/4 v5, 0x5

    aput-byte v3, v2, v5

    .line 136
    const/16 v3, 0xff

    const/4 v5, 0x6

    if-le p1, v3, :cond_51

    .line 137
    const/4 v3, -0x1

    aput-byte v3, v2, v5

    goto :goto_54

    .line 139
    :cond_51
    int-to-byte v3, p1

    aput-byte v3, v2, v5

    .line 142
    :goto_54
    const/16 v3, 0x82

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->setSourceId(I)V

    .line 143
    const/16 v3, 0x81

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->setDestinationId(I)V

    .line 145
    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->setEventDownload(I[B)V

    .line 146
    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->setAdditionalInfo([B)V

    .line 147
    invoke-virtual {v0, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;->setOneShot(Z)V

    .line 148
    const-string v1, "onEventDownload for dataAvailable"

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mHandler:Lcom/mediatek/internal/telephony/cat/MtkCatService;

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->onEventDownload(Lcom/mediatek/internal/telephony/cat/MtkCatResponseMessage;)V

    .line 151
    return-void
.end method

.method public getChannelId()I
    .registers 2

    .line 189
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelId:I

    return v0
.end method

.method public getChannelStatus()I
    .registers 2

    .line 185
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelStatus:I

    return v0
.end method

.method public abstract getTxAvailBufferSize()I
.end method

.method public abstract openChannel(Lcom/mediatek/internal/telephony/cat/BipCmdMessage;Landroid/net/Network;)I
.end method

.method public abstract receiveData(ILcom/mediatek/internal/telephony/cat/ReceiveDataResult;)I
.end method

.method public abstract receiveData(I)Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;
.end method

.method protected declared-synchronized requestStop()V
    .registers 4

    monitor-enter p0

    .line 250
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mStop:Z

    .line 251
    const-string v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestStop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/cat/Channel;->mStop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_1e

    .line 252
    monitor-exit p0

    return-void

    .line 249
    .end local p0    # "this":Lcom/mediatek/internal/telephony/cat/Channel;
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract sendData([BI)I
.end method
