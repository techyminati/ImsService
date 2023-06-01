.class Lcom/mediatek/internal/telephony/cat/TcpChannel;
.super Lcom/mediatek/internal/telephony/cat/Channel;
.source "Channel.java"


# static fields
.field private static final TCP_CONN_TIMEOUT:I = 0x3a98


# instance fields
.field mInput:Ljava/io/DataInputStream;

.field mOutput:Ljava/io/BufferedOutputStream;

.field mSocket:Ljava/net/Socket;

.field rt:Ljava/lang/Thread;


# direct methods
.method constructor <init>(IIILjava/net/InetAddress;IILcom/mediatek/internal/telephony/cat/MtkCatService;Lcom/mediatek/internal/telephony/cat/BipService;)V
    .registers 10
    .param p1, "cid"    # I
    .param p2, "linkMode"    # I
    .param p3, "protocolType"    # I
    .param p4, "address"    # Ljava/net/InetAddress;
    .param p5, "port"    # I
    .param p6, "bufferSize"    # I
    .param p7, "handler"    # Lcom/mediatek/internal/telephony/cat/MtkCatService;
    .param p8, "bipManager"    # Lcom/mediatek/internal/telephony/cat/BipService;

    .line 999
    invoke-direct/range {p0 .. p8}, Lcom/mediatek/internal/telephony/cat/Channel;-><init>(IIILjava/net/InetAddress;IILcom/mediatek/internal/telephony/cat/MtkCatService;Lcom/mediatek/internal/telephony/cat/BipService;)V

    .line 992
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    .line 993
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mInput:Ljava/io/DataInputStream;

    .line 994
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mOutput:Ljava/io/BufferedOutputStream;

    .line 1000
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/cat/TcpChannel;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/cat/TcpChannel;

    .line 990
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/TcpChannel;->onOpenChannelCompleted()V

    return-void
.end method

.method private onOpenChannelCompleted()V
    .registers 6

    .line 1081
    const/4 v0, 0x0

    .line 1083
    .local v0, "ret":I
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mChannelStatus:I

    const-string v2, "[BIP]"

    const/4 v3, 0x4

    if-ne v1, v3, :cond_55

    .line 1085
    :try_start_8
    const-string v1, "[TCP]stream is open"

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    new-instance v1, Ljava/io/DataInputStream;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mInput:Ljava/io/DataInputStream;

    .line 1087
    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mOutput:Ljava/io/BufferedOutputStream;

    .line 1088
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mInput:Ljava/io/DataInputStream;

    invoke-direct {v3, p0, v4}, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;-><init>(Lcom/mediatek/internal/telephony/cat/Channel;Ljava/io/DataInputStream;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->rt:Ljava/lang/Thread;

    .line 1089
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_38} :catch_4a

    .line 1095
    nop

    .line 1101
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cat/TcpChannel;->checkBufferSize()I

    move-result v0

    .line 1102
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mBufferSize:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBuffer:[B

    .line 1103
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mBufferSize:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mTxBuffer:[B

    goto :goto_5c

    .line 1090
    :catch_4a
    move-exception v1

    .line 1091
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "[TCP]Fail to create data stream"

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1093
    const/4 v0, 0x5

    .line 1094
    goto :goto_5c

    .line 1097
    .end local v1    # "e":Ljava/io/IOException;
    :cond_55
    const-string v1, "[TCP]socket is not open"

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    const/4 v0, 0x5

    .line 1099
    nop

    .line 1106
    :goto_5c
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mBipService:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-virtual {v1, v0, p0}, Lcom/mediatek/internal/telephony/cat/BipService;->openChannelCompleted(ILcom/mediatek/internal/telephony/cat/Channel;)V

    .line 1107
    return-void
.end method


# virtual methods
.method public closeChannel()I
    .registers 5

    .line 1109
    const/4 v0, 0x0

    .line 1110
    .local v0, "ret":I
    const-string v1, "[BIP]"

    const-string v2, "[TCP]closeChannel."

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    const/4 v1, 0x0

    .line 1113
    .local v1, "closeChannelThread":Ljava/lang/Thread;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->rt:Ljava/lang/Thread;

    if-eqz v2, :cond_13

    .line 1114
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cat/TcpChannel;->requestStop()V

    .line 1115
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->rt:Ljava/lang/Thread;

    .line 1117
    :cond_13
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/mediatek/internal/telephony/cat/TcpChannel$3;

    invoke-direct {v3, p0}, Lcom/mediatek/internal/telephony/cat/TcpChannel$3;-><init>(Lcom/mediatek/internal/telephony/cat/TcpChannel;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object v1, v2

    .line 1139
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1140
    return v0
.end method

.method public getTxAvailBufferSize()I
    .registers 5

    .line 1263
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mTxBuffer:[B

    const-string v1, "[BIP]"

    if-nez v0, :cond_d

    .line 1264
    const-string v0, "[TCP]getTxAvailBufferSize - mTxBuffer null:"

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    const/4 v0, 0x0

    return v0

    .line 1267
    :cond_d
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mTxBuffer:[B

    array-length v0, v0

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mTxBufferCount:I

    sub-int/2addr v0, v2

    .line 1268
    .local v0, "txRemaining":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TCP]available tx buffer size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    return v0
.end method

.method public openChannel(Lcom/mediatek/internal/telephony/cat/BipCmdMessage;Landroid/net/Network;)I
    .registers 7
    .param p1, "cmdMsg"    # Lcom/mediatek/internal/telephony/cat/BipCmdMessage;
    .param p2, "network"    # Landroid/net/Network;

    .line 1003
    const/4 v0, 0x0

    .line 1004
    .local v0, "ret":I
    const/4 v1, 0x0

    .line 1005
    .local v1, "t_openChannelThread":Ljava/lang/Thread;
    iput-object p2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mNetwork:Landroid/net/Network;

    .line 1007
    iget v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mLinkMode:I

    if-nez v2, :cond_19

    .line 1008
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/mediatek/internal/telephony/cat/TcpChannel$1;

    invoke-direct {v3, p0}, Lcom/mediatek/internal/telephony/cat/TcpChannel$1;-><init>(Lcom/mediatek/internal/telephony/cat/TcpChannel;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object v1, v2

    .line 1051
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1052
    const/16 v0, 0xa

    goto :goto_4d

    .line 1053
    :cond_19
    iget v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mLinkMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4d

    .line 1054
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/mediatek/internal/telephony/cat/TcpChannel$2;

    invoke-direct {v3, p0}, Lcom/mediatek/internal/telephony/cat/TcpChannel$2;-><init>(Lcom/mediatek/internal/telephony/cat/TcpChannel;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object v1, v2

    .line 1067
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1068
    const/4 v2, 0x4

    iput v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mChannelStatus:I

    .line 1070
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cat/TcpChannel;->checkBufferSize()I

    move-result v0

    .line 1071
    const/4 v2, 0x3

    if-ne v0, v2, :cond_41

    .line 1072
    const-string v2, "[BIP]"

    const-string v3, "[TCP]openChannel: buffer size is modified"

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    iget v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mBufferSize:I

    iput v2, p1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBufferSize:I

    .line 1075
    :cond_41
    iget v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mBufferSize:I

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBuffer:[B

    .line 1076
    iget v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mBufferSize:I

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mTxBuffer:[B

    .line 1078
    :cond_4d
    :goto_4d
    return v0
.end method

.method public receiveData(ILcom/mediatek/internal/telephony/cat/ReceiveDataResult;)I
    .registers 11
    .param p1, "requestSize"    # I
    .param p2, "rdr"    # Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;

    .line 1273
    const/4 v0, 0x0

    .line 1274
    .local v0, "ret":I
    const-string v1, "[BIP]"

    const-string v2, "[TCP]new receiveData method"

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    const/4 v1, 0x5

    if-nez p2, :cond_13

    .line 1277
    const-string v2, "[BIP]"

    const-string v3, "[TCP]rdr is null"

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    return v1

    .line 1281
    :cond_13
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TCP]receiveData mRxBufferCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " requestSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mRxBufferOffset:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    new-array v2, p1, [B

    iput-object v2, p2, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    .line 1285
    iget v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    const/4 v3, 0x0

    if-lt v2, p1, :cond_85

    .line 1287
    :try_start_46
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_49
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_46 .. :try_end_49} :catch_7c

    .line 1288
    :try_start_49
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBuffer:[B

    if-eqz v4, :cond_70

    iget-object v4, p2, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    if-eqz v4, :cond_70

    .line 1289
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBuffer:[B

    iget v5, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I

    iget-object v6, p2, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v4, v5, v6, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1294
    iget v4, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I

    add-int/2addr v4, p1

    iput v4, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I

    .line 1295
    iget v4, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    sub-int/2addr v4, p1

    iput v4, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    .line 1296
    iget v4, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    if-nez v4, :cond_6a

    .line 1297
    iput v3, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I

    .line 1302
    :cond_6a
    iget v3, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    iput v3, p2, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->remainingCount:I

    .line 1303
    monitor-exit v2

    .line 1307
    goto :goto_b1

    .line 1291
    :cond_70
    const-string v3, "[BIP]"

    const-string v4, "[TCP]mRxBuffer or rdr.buffer is null 1"

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    monitor-exit v2

    return v1

    .line 1303
    :catchall_79
    move-exception v3

    monitor-exit v2
    :try_end_7b
    .catchall {:try_start_49 .. :try_end_7b} :catchall_79

    .end local v0    # "ret":I
    .end local p0    # "this":Lcom/mediatek/internal/telephony/cat/TcpChannel;
    .end local p1    # "requestSize":I
    .end local p2    # "rdr":Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;
    :try_start_7b
    throw v3
    :try_end_7c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7b .. :try_end_7c} :catch_7c

    .line 1304
    .restart local v0    # "ret":I
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/cat/TcpChannel;
    .restart local p1    # "requestSize":I
    .restart local p2    # "rdr":Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;
    :catch_7c
    move-exception v2

    .line 1305
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "[BIP]"

    const-string v4, "[TCP]fail copy rx buffer out 1"

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    return v1

    .line 1309
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_85
    const-string v2, "[BIP]"

    const-string v4, "[TCP]rx buffer is insufficient !!!"

    invoke-static {v2, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    :try_start_8c
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_8f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8c .. :try_end_8f} :catch_be

    .line 1312
    :try_start_8f
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBuffer:[B

    if-eqz v4, :cond_b2

    iget-object v4, p2, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    if-eqz v4, :cond_b2

    .line 1313
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBuffer:[B

    iget v5, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I

    iget-object v6, p2, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    iget v7, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    invoke-static {v4, v5, v6, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1319
    iput v3, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I

    .line 1320
    iput v3, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    .line 1321
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1322
    monitor-exit v2
    :try_end_ac
    .catchall {:try_start_8f .. :try_end_ac} :catchall_bb

    .line 1323
    :try_start_ac
    iput v3, p2, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->remainingCount:I
    :try_end_ae
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_ac .. :try_end_ae} :catch_be

    .line 1324
    const/16 v0, 0x9

    .line 1328
    nop

    .line 1330
    :goto_b1
    return v0

    .line 1315
    :cond_b2
    :try_start_b2
    const-string v3, "[BIP]"

    const-string v4, "[TCP]mRxBuffer or rdr.buffer is null 2"

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    monitor-exit v2

    return v1

    .line 1322
    :catchall_bb
    move-exception v3

    monitor-exit v2
    :try_end_bd
    .catchall {:try_start_b2 .. :try_end_bd} :catchall_bb

    .end local v0    # "ret":I
    .end local p0    # "this":Lcom/mediatek/internal/telephony/cat/TcpChannel;
    .end local p1    # "requestSize":I
    .end local p2    # "rdr":Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;
    :try_start_bd
    throw v3
    :try_end_be
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_bd .. :try_end_be} :catch_be

    .line 1325
    .restart local v0    # "ret":I
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/cat/TcpChannel;
    .restart local p1    # "requestSize":I
    .restart local p2    # "rdr":Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;
    :catch_be
    move-exception v2

    .line 1326
    .restart local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "[BIP]"

    const-string v4, "[TCP]fail copy rx buffer out 2"

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    return v1
.end method

.method public receiveData(I)Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;
    .registers 12
    .param p1, "requestCount"    # I

    .line 1144
    new-instance v0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;-><init>()V

    .line 1145
    .local v0, "ret":Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;
    new-array v1, p1, [B

    iput-object v1, v0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    .line 1146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TCP]receiveData "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[BIP]"

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    const/4 v3, 0x0

    if-lt v1, p1, :cond_55

    .line 1151
    :try_start_36
    const-string v1, "[TCP]Start to copy data from buffer"

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBuffer:[B

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I

    iget-object v4, v0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v1, v2, v4, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1154
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    .line 1155
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I

    .line 1156
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    iput v1, v0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->remainingCount:I
    :try_end_52
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_36 .. :try_end_52} :catch_53

    goto :goto_54

    .line 1157
    :catch_53
    move-exception v1

    .line 1158
    :goto_54
    goto :goto_a7

    .line 1160
    :cond_55
    move v1, p1

    .line 1161
    .local v1, "needCopy":I
    iget v4, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    .line 1162
    .local v4, "canCopy":I
    const/4 v5, 0x0

    .line 1163
    .local v5, "countCopied":I
    const/4 v6, 0x0

    .line 1165
    .local v6, "canExitLoop":Z
    :goto_5a
    if-nez v6, :cond_a7

    .line 1166
    if-le v1, v4, :cond_76

    .line 1168
    :try_start_5e
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBuffer:[B

    iget v8, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I

    iget-object v9, v0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v7, v8, v9, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1170
    iget v7, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I

    .line 1171
    iget v7, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    sub-int/2addr v7, v4

    iput v7, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferCount:I
    :try_end_71
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5e .. :try_end_71} :catch_74

    .line 1172
    add-int/2addr v5, v4

    .line 1173
    sub-int/2addr v1, v4

    .line 1175
    :goto_73
    goto :goto_8c

    .line 1174
    :catch_74
    move-exception v7

    goto :goto_73

    .line 1178
    :cond_76
    :try_start_76
    iget v7, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I

    iget-object v9, v0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v7, v8, v9, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1180
    iget v7, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I

    add-int/2addr v7, v1

    iput v7, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I
    :try_end_88
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_76 .. :try_end_88} :catch_8b

    .line 1181
    add-int/2addr v5, v1

    .line 1182
    const/4 v1, 0x0

    .line 1184
    goto :goto_8c

    .line 1183
    :catch_8b
    move-exception v7

    .line 1187
    :goto_8c
    if-nez v1, :cond_90

    .line 1188
    const/4 v6, 0x1

    goto :goto_5a

    .line 1191
    :cond_90
    :try_start_90
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mInput:Ljava/io/DataInputStream;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBuffer:[B

    iget-object v9, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBuffer:[B

    array-length v9, v9

    invoke-virtual {v7, v8, v3, v9}, Ljava/io/DataInputStream;->read([BII)I

    move-result v7

    .line 1192
    .local v7, "count":I
    iput v7, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    .line 1193
    iput v3, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_9f} :catch_a0

    .end local v7    # "count":I
    goto :goto_a6

    .line 1194
    :catch_a0
    move-exception v7

    .line 1195
    .local v7, "e":Ljava/io/IOException;
    const-string v8, "[TCP]receiveData - IOE"

    invoke-static {v2, v8}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    .end local v7    # "e":Ljava/io/IOException;
    :goto_a6
    goto :goto_5a

    .line 1200
    .end local v1    # "needCopy":I
    .end local v4    # "canCopy":I
    .end local v5    # "countCopied":I
    .end local v6    # "canExitLoop":Z
    :cond_a7
    :goto_a7
    return-object v0
.end method

.method public sendData([BI)I
    .registers 14
    .param p1, "data"    # [B
    .param p2, "mode"    # I

    .line 1204
    const-string v0, " count:"

    const/4 v1, 0x0

    .line 1205
    .local v1, "ret":I
    const/4 v2, 0x0

    .line 1207
    .local v2, "tmpBuffer":[B
    const/4 v3, 0x5

    const-string v4, "[BIP]"

    if-nez p1, :cond_f

    .line 1208
    const-string v0, "[TCP]sendData - data null:"

    invoke-static {v4, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    return v3

    .line 1212
    :cond_f
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mTxBuffer:[B

    if-nez v5, :cond_19

    .line 1213
    const-string v0, "[TCP]sendData - mTxBuffer null:"

    invoke-static {v4, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    return v3

    .line 1217
    :cond_19
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mTxBuffer:[B

    array-length v5, v5

    iget v6, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mTxBufferCount:I

    sub-int/2addr v5, v6

    .line 1220
    .local v5, "txRemaining":I
    :try_start_1f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[TCP]sendData: size of data:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " mode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[TCP]sendData: size of buffer:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mTxBuffer:[B

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mTxBufferCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    iget v6, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mTxBufferCount:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v6, :cond_68

    if-ne v7, p2, :cond_68

    .line 1225
    move-object v2, p1

    .line 1226
    array-length v6, p1

    iput v6, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mTxBufferCount:I
    :try_end_67
    .catch Ljava/lang/NullPointerException; {:try_start_1f .. :try_end_67} :catch_c5

    goto :goto_83

    .line 1229
    :cond_68
    :try_start_68
    array-length v6, p1

    if-lt v5, v6, :cond_7a

    .line 1230
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mTxBuffer:[B

    iget v9, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mTxBufferCount:I

    array-length v10, p1

    invoke-static {p1, v8, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1231
    iget v6, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mTxBufferCount:I

    array-length v9, p1

    add-int/2addr v6, v9

    iput v6, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mTxBufferCount:I

    goto :goto_7f

    .line 1233
    :cond_7a
    const-string v6, "[TCP]sendData - tx buffer is not enough"

    invoke-static {v4, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_68 .. :try_end_7f} :catch_c3
    .catch Ljava/lang/NullPointerException; {:try_start_68 .. :try_end_7f} :catch_c5

    .line 1237
    :goto_7f
    nop

    .line 1238
    :try_start_80
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mTxBuffer:[B

    move-object v2, v6

    .line 1240
    :goto_83
    if-ne p2, v7, :cond_c2

    iget v6, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mChannelStatus:I
    :try_end_87
    .catch Ljava/lang/NullPointerException; {:try_start_80 .. :try_end_87} :catch_c5

    const/4 v7, 0x4

    if-ne v6, v7, :cond_c2

    .line 1243
    :try_start_8a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[TCP]SEND_DATA_MODE_IMMEDIATE:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mTxBuffer:[B

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mTxBufferCount:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mOutput:Ljava/io/BufferedOutputStream;

    iget v6, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mTxBufferCount:I

    invoke-virtual {v0, v2, v8, v6}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 1246
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1247
    iput v8, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mTxBufferCount:I
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_b7} :catch_b8
    .catch Ljava/lang/NullPointerException; {:try_start_8a .. :try_end_b7} :catch_c5

    .line 1252
    goto :goto_c2

    .line 1248
    :catch_b8
    move-exception v0

    .line 1249
    .local v0, "e":Ljava/io/IOException;
    :try_start_b9
    const-string v6, "[TCP]sendData - Exception"

    invoke-static {v4, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c1
    .catch Ljava/lang/NullPointerException; {:try_start_b9 .. :try_end_c1} :catch_c5

    .line 1251
    return v3

    .line 1258
    .end local v0    # "e":Ljava/io/IOException;
    :cond_c2
    :goto_c2
    goto :goto_cf

    .line 1235
    :catch_c3
    move-exception v0

    .line 1236
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    return v3

    .line 1254
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_c5
    move-exception v0

    .line 1255
    .local v0, "ne":Ljava/lang/NullPointerException;
    const-string v3, "[UDP]sendData NE"

    invoke-static {v4, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1257
    const/4 v1, 0x5

    .line 1259
    .end local v0    # "ne":Ljava/lang/NullPointerException;
    :goto_cf
    return v1
.end method
