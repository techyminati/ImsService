.class Lcom/mediatek/internal/telephony/cat/UdpChannel;
.super Lcom/mediatek/internal/telephony/cat/Channel;
.source "Channel.java"


# static fields
.field private static final UDP_SOCKET_TIMEOUT:I = 0xbb8


# instance fields
.field mSocket:Ljava/net/DatagramSocket;

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

    .line 1341
    invoke-direct/range {p0 .. p8}, Lcom/mediatek/internal/telephony/cat/Channel;-><init>(IIILjava/net/InetAddress;IILcom/mediatek/internal/telephony/cat/MtkCatService;Lcom/mediatek/internal/telephony/cat/BipService;)V

    .line 1335
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    .line 1337
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->rt:Ljava/lang/Thread;

    .line 1342
    return-void
.end method


# virtual methods
.method public closeChannel()I
    .registers 5

    .line 1374
    const/4 v0, 0x0

    .line 1376
    .local v0, "ret":I
    const-string v1, "[BIP]"

    const-string v2, "[UDP]closeChannel."

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->rt:Ljava/lang/Thread;

    const/4 v3, 0x0

    if-eqz v2, :cond_12

    .line 1380
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cat/UdpChannel;->requestStop()V

    .line 1381
    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->rt:Ljava/lang/Thread;

    .line 1383
    :cond_12
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    if-eqz v2, :cond_29

    .line 1385
    const-string v2, "[UDP]closeSocket."

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 1388
    const/4 v1, 0x2

    iput v1, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mChannelStatus:I

    .line 1390
    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    .line 1391
    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBuffer:[B

    .line 1392
    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mTxBuffer:[B

    .line 1395
    :cond_29
    return v0
.end method

.method public getTxAvailBufferSize()I
    .registers 5

    .line 1525
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mTxBuffer:[B

    const-string v1, "[BIP]"

    if-nez v0, :cond_d

    .line 1526
    const-string v0, "[UDP]getTxAvailBufferSize - mTxBuffer null:"

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    const/4 v0, 0x0

    return v0

    .line 1529
    :cond_d
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mTxBuffer:[B

    array-length v0, v0

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mTxBufferCount:I

    sub-int/2addr v0, v2

    .line 1530
    .local v0, "txRemaining":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[UDP]available tx buffer size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    return v0
.end method

.method public openChannel(Lcom/mediatek/internal/telephony/cat/BipCmdMessage;Landroid/net/Network;)I
    .registers 8
    .param p1, "cmdMsg"    # Lcom/mediatek/internal/telephony/cat/BipCmdMessage;
    .param p2, "network"    # Landroid/net/Network;

    .line 1345
    const-string v0, "[BIP]"

    const/4 v1, 0x0

    .line 1346
    .local v1, "ret":I
    iput-object p2, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mNetwork:Landroid/net/Network;

    .line 1348
    iget v2, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mLinkMode:I

    if-nez v2, :cond_68

    .line 1350
    :try_start_9
    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    .line 1351
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mNetwork:Landroid/net/Network;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v2, v3}, Landroid/net/Network;->bindSocket(Ljava/net/DatagramSocket;)V

    .line 1352
    const/4 v2, 0x4

    iput v2, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mChannelStatus:I

    .line 1353
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    const/16 v3, 0x80

    iput v3, v2, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    .line 1354
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    invoke-direct {v3, p0, v4}, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;-><init>(Lcom/mediatek/internal/telephony/cat/Channel;Ljava/net/DatagramSocket;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->rt:Ljava/lang/Thread;

    .line 1355
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[UDP]: sock status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mChannelStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_47} :catch_48

    .line 1359
    goto :goto_4c

    .line 1357
    :catch_48
    move-exception v2

    .line 1358
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1361
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4c
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cat/UdpChannel;->checkBufferSize()I

    move-result v1

    .line 1362
    const/4 v2, 0x3

    if-ne v1, v2, :cond_5c

    .line 1363
    const-string v2, "[UDP]openChannel: buffer size is modified"

    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mBufferSize:I

    iput v0, p1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBufferSize:I

    .line 1366
    :cond_5c
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mBufferSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBuffer:[B

    .line 1367
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mBufferSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mTxBuffer:[B

    .line 1370
    :cond_68
    return v1
.end method

.method public receiveData(ILcom/mediatek/internal/telephony/cat/ReceiveDataResult;)I
    .registers 11
    .param p1, "requestSize"    # I
    .param p2, "rdr"    # Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;

    .line 1535
    const/4 v0, 0x0

    .line 1536
    .local v0, "ret":I
    const/4 v1, 0x5

    if-nez p2, :cond_c

    .line 1537
    const-string v2, "[BIP]"

    const-string v3, "[UDP]rdr is null"

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
    return v1

    .line 1541
    :cond_c
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[UDP]receiveData mRxBufferCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " requestSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mRxBufferOffset:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1544
    new-array v2, p1, [B

    iput-object v2, p2, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    .line 1545
    iget v2, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    const/4 v3, 0x0

    if-lt v2, p1, :cond_6d

    .line 1547
    :try_start_3f
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_42
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3f .. :try_end_42} :catch_64

    .line 1548
    :try_start_42
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBuffer:[B

    iget v5, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    iget-object v6, p2, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v4, v5, v6, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1549
    iget v4, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    add-int/2addr v4, p1

    iput v4, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    .line 1550
    iget v4, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    sub-int/2addr v4, p1

    iput v4, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    .line 1551
    iget v4, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    if-nez v4, :cond_5b

    .line 1552
    iput v3, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    .line 1558
    :cond_5b
    iget v3, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    iput v3, p2, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->remainingCount:I

    .line 1559
    monitor-exit v2

    .line 1563
    goto :goto_91

    .line 1559
    :catchall_61
    move-exception v3

    monitor-exit v2
    :try_end_63
    .catchall {:try_start_42 .. :try_end_63} :catchall_61

    .end local v0    # "ret":I
    .end local p0    # "this":Lcom/mediatek/internal/telephony/cat/UdpChannel;
    .end local p1    # "requestSize":I
    .end local p2    # "rdr":Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;
    :try_start_63
    throw v3
    :try_end_64
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_63 .. :try_end_64} :catch_64

    .line 1560
    .restart local v0    # "ret":I
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/cat/UdpChannel;
    .restart local p1    # "requestSize":I
    .restart local p2    # "rdr":Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;
    :catch_64
    move-exception v2

    .line 1561
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "[BIP]"

    const-string v4, "[UDP]fail copy rx buffer out 1"

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    return v1

    .line 1565
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_6d
    const-string v2, "[BIP]"

    const-string v4, "[UDP]rx buffer is insufficient !!!"

    invoke-static {v2, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    :try_start_74
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_77
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_74 .. :try_end_77} :catch_95

    .line 1568
    :try_start_77
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBuffer:[B

    iget v5, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    iget-object v6, p2, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    iget v7, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    invoke-static {v4, v5, v6, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1569
    iput v3, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    .line 1570
    iput v3, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    .line 1571
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1572
    monitor-exit v2
    :try_end_8c
    .catchall {:try_start_77 .. :try_end_8c} :catchall_92

    .line 1573
    :try_start_8c
    iput v3, p2, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->remainingCount:I
    :try_end_8e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8c .. :try_end_8e} :catch_95

    .line 1574
    const/16 v0, 0x9

    .line 1578
    nop

    .line 1580
    :goto_91
    return v0

    .line 1572
    :catchall_92
    move-exception v3

    :try_start_93
    monitor-exit v2
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_92

    .end local v0    # "ret":I
    .end local p0    # "this":Lcom/mediatek/internal/telephony/cat/UdpChannel;
    .end local p1    # "requestSize":I
    .end local p2    # "rdr":Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;
    :try_start_94
    throw v3
    :try_end_95
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_94 .. :try_end_95} :catch_95

    .line 1575
    .restart local v0    # "ret":I
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/cat/UdpChannel;
    .restart local p1    # "requestSize":I
    .restart local p2    # "rdr":Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;
    :catch_95
    move-exception v2

    .line 1576
    .restart local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "[BIP]"

    const-string v4, "[UDP]fail copy rx buffer out 2"

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    return v1
.end method

.method public receiveData(I)Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;
    .registers 11
    .param p1, "requestCount"    # I

    .line 1399
    new-instance v0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;-><init>()V

    .line 1400
    .local v0, "ret":Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;
    new-array v1, p1, [B

    iput-object v1, v0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    .line 1402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UDP]receiveData "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[BIP]"

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    const/4 v2, 0x0

    if-lt v1, p1, :cond_50

    .line 1407
    :try_start_36
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBuffer:[B

    iget v3, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    iget-object v4, v0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v1, v3, v4, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1408
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    .line 1409
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    .line 1410
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    iput v1, v0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->remainingCount:I
    :try_end_4d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_36 .. :try_end_4d} :catch_4e

    goto :goto_4f

    .line 1411
    :catch_4e
    move-exception v1

    .line 1412
    :goto_4f
    goto :goto_b0

    .line 1414
    :cond_50
    move v1, p1

    .line 1415
    .local v1, "needCopy":I
    iget v3, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    .line 1416
    .local v3, "canCopy":I
    const/4 v4, 0x0

    .line 1417
    .local v4, "countCopied":I
    const/4 v5, 0x0

    .line 1419
    .local v5, "canExitLoop":Z
    :goto_55
    if-nez v5, :cond_b0

    .line 1420
    if-le v1, v3, :cond_71

    .line 1422
    :try_start_59
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBuffer:[B

    iget v7, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    iget-object v8, v0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v6, v7, v8, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1424
    add-int/2addr v4, v3

    .line 1425
    sub-int/2addr v1, v3

    .line 1426
    iget v6, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    .line 1427
    iget v6, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    sub-int/2addr v6, v3

    iput v6, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferCount:I
    :try_end_6e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_59 .. :try_end_6e} :catch_6f

    goto :goto_70

    .line 1428
    :catch_6f
    move-exception v6

    .line 1429
    :goto_70
    goto :goto_88

    .line 1432
    :cond_71
    :try_start_71
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBuffer:[B

    iget v7, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    iget-object v8, v0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v6, v7, v8, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1434
    iget v6, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    add-int/2addr v6, v1

    iput v6, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    .line 1435
    iget v6, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    sub-int/2addr v6, v1

    iput v6, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferCount:I
    :try_end_84
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_71 .. :try_end_84} :catch_87

    .line 1436
    add-int/2addr v4, v1

    .line 1437
    const/4 v1, 0x0

    .line 1439
    goto :goto_88

    .line 1438
    :catch_87
    move-exception v6

    .line 1442
    :goto_88
    if-nez v1, :cond_8c

    .line 1443
    const/4 v5, 0x1

    goto :goto_55

    .line 1446
    :cond_8c
    :try_start_8c
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    const/16 v7, 0xbb8

    invoke-virtual {v6, v7}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 1447
    new-instance v6, Ljava/net/DatagramPacket;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBuffer:[B

    iget-object v8, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBuffer:[B

    array-length v8, v8

    invoke-direct {v6, v7, v8}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 1448
    .local v6, "packet":Ljava/net/DatagramPacket;
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v7, v6}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 1449
    iput v2, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    .line 1450
    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getLength()I

    move-result v7

    iput v7, p0, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mRxBufferCount:I
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_aa} :catch_ab

    .end local v6    # "packet":Ljava/net/DatagramPacket;
    goto :goto_af

    .line 1451
    :catch_ab
    move-exception v6

    .line 1452
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 1453
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_af
    goto :goto_55

    .line 1458
    .end local v1    # "needCopy":I
    .end local v3    # "canCopy":I
    .end local v4    # "countCopied":I
    .end local v5    # "canExitLoop":Z
    :cond_b0
    :goto_b0
    return-object v0
.end method

.method public sendData([BI)I
    .registers 21
    .param p1, "data"    # [B
    .param p2, "mode"    # I

    .line 1462
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const/4 v4, 0x0

    .line 1463
    .local v4, "ret":I
    const/4 v5, 0x0

    .line 1465
    .local v5, "tmpBuffer":[B
    const/4 v6, 0x5

    const-string v7, "[BIP]"

    if-nez v2, :cond_13

    .line 1466
    const-string v0, "[UDP]sendData - data null:"

    invoke-static {v7, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    return v6

    .line 1470
    :cond_13
    iget-object v0, v1, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mTxBuffer:[B

    if-nez v0, :cond_1d

    .line 1471
    const-string v0, "[UDP]sendData - mTxBuffer null:"

    invoke-static {v7, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    return v6

    .line 1475
    :cond_1d
    iget-object v0, v1, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mTxBuffer:[B

    array-length v0, v0

    iget v8, v1, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mTxBufferCount:I

    sub-int v8, v0, v8

    .line 1477
    .local v8, "txRemaining":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[UDP]sendData: size of data:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v9, v2

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " mode:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[UDP]sendData: size of buffer:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mTxBuffer:[B

    array-length v9, v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " count:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mTxBufferCount:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    :try_start_62
    iget v0, v1, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mTxBufferCount:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v0, :cond_70

    if-ne v10, v3, :cond_70

    .line 1482
    move-object/from16 v5, p1

    .line 1483
    array-length v0, v2

    iput v0, v1, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mTxBufferCount:I

    goto :goto_a0

    .line 1485
    :cond_70
    array-length v0, v2
    :try_end_71
    .catch Ljava/lang/NullPointerException; {:try_start_62 .. :try_end_71} :catch_101

    if-lt v8, v0, :cond_89

    .line 1487
    :try_start_73
    iget-object v0, v1, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mTxBuffer:[B

    iget v12, v1, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mTxBufferCount:I

    array-length v13, v2

    invoke-static {v2, v11, v0, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1488
    iget v0, v1, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mTxBufferCount:I

    array-length v12, v2

    add-int/2addr v0, v12

    iput v0, v1, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mTxBufferCount:I
    :try_end_81
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_73 .. :try_end_81} :catch_82
    .catch Ljava/lang/NullPointerException; {:try_start_73 .. :try_end_81} :catch_101

    goto :goto_88

    .line 1489
    :catch_82
    move-exception v0

    .line 1490
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_83
    const-string v12, "[UDP]sendData - IndexOutOfBoundsException"

    invoke-static {v7, v12}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_88
    goto :goto_9d

    .line 1493
    :cond_89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[UDP]sendData - tx buffer is not enough:"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    :goto_9d
    iget-object v0, v1, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mTxBuffer:[B

    move-object v5, v0

    .line 1498
    :goto_a0
    if-ne v3, v10, :cond_100

    .line 1499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[UDP]Send data("

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mAddress:Ljava/net/InetAddress;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mPort:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "):"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mTxBuffer:[B

    array-length v10, v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mTxBufferCount:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1502
    new-instance v0, Ljava/net/DatagramPacket;

    const/4 v14, 0x0

    iget v15, v1, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mTxBufferCount:I

    iget-object v9, v1, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mAddress:Ljava/net/InetAddress;

    iget v10, v1, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mPort:I

    move-object v12, v0

    move-object v13, v5

    move-object/from16 v16, v9

    move/from16 v17, v10

    invoke-direct/range {v12 .. v17}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    move-object v9, v0

    .line 1504
    .local v9, "packet":Ljava/net/DatagramPacket;
    iget-object v0, v1, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;
    :try_end_ea
    .catch Ljava/lang/NullPointerException; {:try_start_83 .. :try_end_ea} :catch_101

    if-eqz v0, :cond_100

    .line 1506
    :try_start_ec
    invoke-virtual {v0, v9}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 1507
    iput v11, v1, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mTxBufferCount:I
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_f1} :catch_f2
    .catch Ljava/lang/NullPointerException; {:try_start_ec .. :try_end_f1} :catch_101

    .line 1513
    goto :goto_100

    .line 1508
    :catch_f2
    move-exception v0

    .line 1509
    .local v0, "e":Ljava/lang/Exception;
    :try_start_f3
    const-string v10, "[UDP]sendData - Exception"

    invoke-static {v7, v10}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    iget-object v10, v1, Lcom/mediatek/internal/telephony/cat/UdpChannel;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    iput v11, v10, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    .line 1511
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_ff
    .catch Ljava/lang/NullPointerException; {:try_start_f3 .. :try_end_ff} :catch_101

    .line 1512
    return v6

    .line 1520
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v9    # "packet":Ljava/net/DatagramPacket;
    :cond_100
    :goto_100
    goto :goto_10b

    .line 1516
    :catch_101
    move-exception v0

    .line 1517
    .local v0, "ne":Ljava/lang/NullPointerException;
    const-string v6, "[UDP]sendData NE"

    invoke-static {v7, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1518
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1519
    const/4 v4, 0x5

    .line 1521
    .end local v0    # "ne":Ljava/lang/NullPointerException;
    :goto_10b
    return v4
.end method
